package com.museodelosllanos.bmll;

import Vista.Consultas;
/**
 *
 * @author luise
 */
public class BMLL {

    public static void main(String[] args) {
         // Instantiate the Consultas form
        Consultas consul = new Consultas();

        // Open the form safely on the EDT
        consul.open();
    }
}
