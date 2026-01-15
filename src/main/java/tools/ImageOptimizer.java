package tools;

import javax.imageio.IIOImage;
import javax.imageio.ImageIO;
import javax.imageio.ImageWriteParam;
import javax.imageio.ImageWriter;
import javax.imageio.stream.ImageOutputStream;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.text.DecimalFormat;
import java.util.Iterator;


public class ImageOptimizer {
    public static void main(String[] args) throws Exception {
        if (args.length < 1) {
            System.out.println("Usage: ImageOptimizer <dir> [maxDim] [jpegQuality]");
            return;
        }

    Path dir = Path.of(args[0]);
    int maxDim = args.length >= 2 ? Integer.parseInt(args[1]) : 800;
    float jpegQuality = args.length >= 3 ? Float.parseFloat(args[2]) : 0.85f;
    boolean previewJpg = args.length >= 4 && "preview".equalsIgnoreCase(args[3]);

        if (!Files.isDirectory(dir)) {
            System.err.println("Directory not found: " + dir);
            return;
        }

        System.out.println("Optimizing images in: " + dir + " (maxDim=" + maxDim + ", jpegQ=" + jpegQuality + ")");

        Files.list(dir).forEach(p -> {
            try {
                File f = p.toFile();
                String name = f.getName().toLowerCase();
                if (name.endsWith(".png") || name.endsWith(".jpg") || name.endsWith(".jpeg")) {
                    optimizeImage(f, maxDim, jpegQuality, previewJpg);
                }
            } catch (Exception e) {
                System.err.println("Error processing " + p + ": " + e.getMessage());
            }
        });
    }

    private static void optimizeImage(File file, int maxDim, float jpegQuality, boolean previewJpg) throws IOException {
        long before = Files.size(file.toPath());
        // backup if not exists
        Path bak = file.toPath().resolveSibling(file.getName() + ".bak");
        if (!Files.exists(bak)) {
            Files.copy(file.toPath(), bak, StandardCopyOption.COPY_ATTRIBUTES);
        }

        BufferedImage src = ImageIO.read(file);
        if (src == null) {
            System.out.println("Skipping (unsupported): " + file.getName());
            return;
        }

    int width = src.getWidth();
    int height = src.getHeight();
    boolean alpha = hasAlpha(src);
        int max = Math.max(width, height);

        BufferedImage processed = src;

        if (max > maxDim) {
            double scale = (double) maxDim / (double) max;
            int newW = Math.max(1, (int) Math.round(width * scale));
            int newH = Math.max(1, (int) Math.round(height * scale));
            processed = resize(src, newW, newH);
        }

        String lower = file.getName().toLowerCase();
        if (lower.endsWith(".jpg") || lower.endsWith(".jpeg")) {
            writeJpeg(processed, file, jpegQuality);
        } else if (lower.endsWith(".png")) {
            // For PNGs, optionally produce a JPEG preview to measure potential size savings
            if (previewJpg && !hasAlpha(src)) {
                File jpgCandidate = new File(file.getParentFile(), stripExtension(file.getName()) + ".jpg.tmp");
                writeJpeg(processed, jpgCandidate, jpegQuality);
                long jpgSize = Files.size(jpgCandidate.toPath());
                long pngSize = Files.size(file.toPath());
                System.out.println("  JPG candidate: " + readableFileSize(pngSize) + " -> " + readableFileSize(jpgSize) + " (candidate: " + jpgCandidate.getName() + ")");
            }
            writePng(processed, file, jpegQuality);
        }

    long after = Files.size(file.toPath());
    int newW = processed.getWidth();
    int newH = processed.getHeight();
    System.out.println(file.getName() + " (" + width + "x" + height + " -> " + newW + "x" + newH + ") alpha=" + alpha + ": " + readableFileSize(before) + " -> " + readableFileSize(after));
    }

    private static BufferedImage resize(BufferedImage src, int w, int h) {
        BufferedImage dst = new BufferedImage(w, h, src.getType() == 0 ? BufferedImage.TYPE_INT_ARGB : src.getType());
        Graphics2D g2 = dst.createGraphics();
        g2.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BICUBIC);
        g2.setRenderingHint(RenderingHints.KEY_RENDERING, RenderingHints.VALUE_RENDER_QUALITY);
        g2.setRenderingHint(RenderingHints.KEY_ANTIALIASING, RenderingHints.VALUE_ANTIALIAS_ON);
        g2.drawImage(src, 0, 0, w, h, null);
        g2.dispose();
        return dst;
    }

    private static void writeJpeg(BufferedImage img, File out, float quality) throws IOException {
        // ensure RGB (no alpha) for JPEG
        BufferedImage rgb = new BufferedImage(img.getWidth(), img.getHeight(), BufferedImage.TYPE_INT_RGB);
        Graphics2D g = rgb.createGraphics();
        g.setComposite(AlphaComposite.Src);
        g.setRenderingHint(RenderingHints.KEY_INTERPOLATION, RenderingHints.VALUE_INTERPOLATION_BILINEAR);
        g.drawImage(img, 0, 0, null);
        g.dispose();

        Iterator<ImageWriter> writers = ImageIO.getImageWritersByFormatName("jpeg");
        if (!writers.hasNext()) writers = ImageIO.getImageWritersByFormatName("jpg");
        if (!writers.hasNext()) {
            ImageIO.write(rgb, "jpg", out);
            return;
        }
        ImageWriter writer = writers.next();
        ImageWriteParam param = writer.getDefaultWriteParam();
        if (param.canWriteCompressed()) {
            param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
            param.setCompressionQuality(quality);
        }

        try (ImageOutputStream ios = ImageIO.createImageOutputStream(out)) {
            writer.setOutput(ios);
            writer.write(null, new IIOImage(rgb, null, null), param);
            writer.dispose();
        }
    }

    private static void writePng(BufferedImage img, File out, float quality) throws IOException {
        // attempt to use PNG writer compression if available
        Iterator<ImageWriter> writers = ImageIO.getImageWritersByFormatName("png");
        if (!writers.hasNext()) {
            ImageIO.write(img, "png", out);
            return;
        }
        ImageWriter writer = writers.next();
        ImageWriteParam param = writer.getDefaultWriteParam();
        if (param.canWriteCompressed()) {
            param.setCompressionMode(ImageWriteParam.MODE_EXPLICIT);
            // for PNG the quality is vendor-specific; try to set it
            param.setCompressionQuality(quality);
        }

        try (ImageOutputStream ios = ImageIO.createImageOutputStream(out)) {
            writer.setOutput(ios);
            writer.write(null, new IIOImage(img, null, null), param);
            writer.dispose();
        }
    }

    private static boolean hasAlpha(BufferedImage img) {
        return img.getColorModel().hasAlpha();
    }

    private static String stripExtension(String name) {
        int i = name.lastIndexOf('.');
        return (i > 0) ? name.substring(0, i) : name;
    }

    private static String readableFileSize(long size) {
        if (size <= 0) return "0 B";
        final String[] units = new String[]{"B", "KB", "MB", "GB"};
        int digitGroups = (int) (Math.log10(size) / Math.log10(1024));
        return new DecimalFormat("#,##0.#").format(size / Math.pow(1024, digitGroups)) + " " + units[digitGroups];
    }
}
