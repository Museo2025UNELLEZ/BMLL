package com.museodelosllanos.bmll;

import Vista.Login;
/**
 *
 * @author luise
 */
public class BMLL {

    public static void main(String[] args) {
         // Instantiate the Consultas form
        Login consul = new Login();

        // Open the form safely on the EDT
        consul.open();
    }
}
