package Vista;

import java.net.URL;
import java.awt.Image;
// Note: simplified helper — no caching, no BufferedImage. Returns a new scaled ImageIcon each call.
import javax.swing.ImageIcon;


 
public final class ImageHelper {
    private ImageHelper() {}

    public static ImageIcon getScaledIcon(String resourcePath, int width, int height) {
        if (resourcePath == null) return null;
        URL url = ImageHelper.class.getResource(resourcePath);
        if (url == null) return null;

        ImageIcon base = new ImageIcon(url);
        Image img = base.getImage();
        if (width <= 0 || height <= 0) {
            return base;
        }

        Image scaled = img.getScaledInstance(width, height, Image.SCALE_SMOOTH);
        return new ImageIcon(scaled);
    }
}
