/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package cars.pckg.myapp;

import database.pckg.myapp.Database;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.pckg.myapp.Car;

/**
 *
 * @author Personal
 */
public class CarsDAO {

    public List<Car> getAllCars() {
        try {
            List<Car> carList = new ArrayList<>();
            Database db = new Database();
            ResultSet rs = db.ExecuteQuery("SELECT * FROM Cars;");

            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("carId"));
                car.setBrand(rs.getString("Brand"));
                car.setModel(rs.getString("Model"));
                car.setCC(rs.getString("cubicCapacity"));
                carList.add(car);
            }

            db.Close();
            return carList;
        } catch (SQLException ex) {
            System.getLogger(CarsDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            return null;
        }
    }

    public void insertCar(Car car) {
        Database db = new Database();

        String sql = "INSERT INTO Cars (brand, model, type, fuelType, transmission, cubicCapacity, created)"
                   + "VALUES ('" + car.getBrand() + "', '" + car.getModel() + "', 7, 2, 2, '" + car.getCC() + "', LOCALTIME());";

        db.ExecuteUpdate(sql);
        db.Close();
    }
}
