package com.Medicare;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DataBaseConnection {
	
	private static final String URL = "jdbc:mysql://localhost:3306/MediCare";
    private static final String USER = "root";
    private static final String PASSWORD = "root2002";
    private static Connection connection;
    
 // Constructeur privé pour empêcher l'instanciation directe
    private DataBaseConnection() {}
    
 // Méthode pour obtenir la connexion unique
    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver"); // Chargement du driver
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("Connexion réussie !");
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
            }
        }
        return connection;
    }

    
    
    public static boolean isConnectionValid() {
        try {
            return connection != null && connection.isValid(2); // Vérifie en 2 secondes max
        } catch (SQLException e) {
            return false;
        }
    }
}
