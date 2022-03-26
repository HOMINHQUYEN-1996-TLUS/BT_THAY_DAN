/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package quan_ly_phong_kham;

import Gui.DashBoard;
import java.sql.SQLException;
import javax.swing.JFrame;

/**
 *
 * @author quyen
 */
public class Quan_Ly_Phong_Kham {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws SQLException {
        // TODO code application logic here
//        String dbURL = "jdbc:sqlserver://localhost;databaseName=QLPK;user=admin;password=1";
//        Connection conn = DriverManager.getConnection(dbURL);
//        if (conn != null) {
//         System.out.println("Connected");
//        } else {
//            System.out.println("Failed");
//        }

        JFrame dashboard = new DashBoard();
        dashboard.setVisible(true);
    }
}
