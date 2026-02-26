/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cars.pckg.myapp;

import database.pckg.myapp.Database;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.pckg.myapp.Catalog;

/**
 *
 * @author Personal
 */
public class CatalogDAO {

    public List<Catalog> getCatalog(String catalog) {
        try {
            List<Catalog> catList = new ArrayList<>();
            Database db = new Database();
            Connection conn = db.getConnection();
            PreparedStatement pstat = conn.prepareStatement("SELECT * FROM "+ catalog);

            ResultSet rs = pstat.executeQuery();

            while (rs.next()) {
                Catalog cat = new Catalog();
                cat.setId(rs.getInt("id"));
                cat.setDescription(rs.getString("description"));               
                catList.add(cat);
            }

            db.Close();
            return catList;
        } catch (SQLException ex) {
            System.getLogger(CatalogDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            return null;
        }
    }
}
