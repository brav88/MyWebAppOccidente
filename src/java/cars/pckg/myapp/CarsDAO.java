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
import java.sql.*;
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
            Connection conn = db.getConnection();
            PreparedStatement pstat = conn.prepareStatement("SELECT * FROM Cars;");

            ResultSet rs = pstat.executeQuery();

            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("carId"));
                car.setBrand(rs.getString("brand"));
                car.setModel(rs.getString("model"));
                car.setCarType(rs.getInt("type"));
                car.setFuelType(rs.getInt("fuelType"));
                car.setTransmission(rs.getInt("transmission"));
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

    public Car getCarById(int carId) {
        try {
            Database db = new Database();
            Connection conn = db.getConnection();
            PreparedStatement pstat = conn.prepareStatement("SELECT * FROM Cars WHERE carId = ?;");
            pstat.setInt(1, carId);

            ResultSet rs = pstat.executeQuery();

            while (rs.next()) {
                Car car = new Car();
                car.setId(rs.getInt("carId"));
                car.setBrand(rs.getString("brand"));
                car.setModel(rs.getString("model"));
                car.setCarType(rs.getInt("type"));
                car.setFuelType(rs.getInt("fuelType"));
                car.setTransmission(rs.getInt("transmission"));
                car.setCC(rs.getString("cubicCapacity"));
                db.Close();
                return car;
            }

            return null;
        } catch (SQLException ex) {
            System.getLogger(CarsDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
            return null;
        }
    }

    public void insertCar(Car car) {
        Database db = new Database();
        Connection conn = db.getConnection();

        PreparedStatement pstat;

        try {
            pstat = conn.prepareStatement("INSERT INTO Cars (brand, model, type, fuelType, transmission, cubicCapacity, created) VALUES (?, ?, ?, ?, ?, ?, LOCALTIME());");
            pstat.setString(1, car.getBrand());
            pstat.setString(2, car.getModel());
            pstat.setInt(3, car.getCarType());
            pstat.setInt(4, car.getFuelType());
            pstat.setInt(5, car.getTransmission());
            pstat.setString(6, car.getCC());
            pstat.executeUpdate();
            db.Close();
        } catch (SQLException ex) {
            System.getLogger(CarsDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }

    public void updateCar(Car car) {
        Database db = new Database();
        Connection conn = db.getConnection();

        PreparedStatement pstat;

        try {
            pstat = conn.prepareStatement("UPDATE Cars SET brand=?, model=?, type=?, fuelType=?, transmission=?, cubicCapacity=? WHERE carId = ?;");
            pstat.setString(1, car.getBrand());
            pstat.setString(2, car.getModel());
            pstat.setInt(3, car.getCarType());
            pstat.setInt(4, car.getFuelType());
            pstat.setInt(5, car.getTransmission());
            pstat.setString(6, car.getCC());
            pstat.setInt(7, car.getId());
            pstat.executeUpdate();
            db.Close();
        } catch (SQLException ex) {
            System.getLogger(CarsDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }

    public void deleteCar(int carId) {
        Database db = new Database();
        Connection conn = db.getConnection();

        PreparedStatement pstat;

        try {
            pstat = conn.prepareStatement("DELETE FROM Cars WHERE carId = ?;");
            pstat.setInt(1, carId);
            pstat.executeUpdate();
            db.Close();
        } catch (SQLException ex) {
            System.getLogger(CarsDAO.class.getName()).log(System.Logger.Level.ERROR, (String) null, ex);
        }
    }
}
