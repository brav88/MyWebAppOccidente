/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.pckg.myapp;

/**
 *
 * @author Personal
 */
public class Car {

    private int Id;
    private String Brand;
    private String Model;
    private int Type;
    private int FuelType;
    private int Transmission;
    private String CubicCapacity;

    public Car() {

    }

    public Car(String _brand, String _model, int _type, int _fuelType, int _transmission, String _cubicCapacity) {
        this.Brand = _brand;
        this.Model = _model;
        this.Type = _type;
        this.FuelType = _fuelType;
        this.Transmission = _transmission;
        this.CubicCapacity = _cubicCapacity;
    }

    public int getId() {
        return Id;
    }

    public String getBrand() {
        return Brand;
    }

    public String getModel() {
        return Model;
    }

    public int getCarType() {
        return Type;
    }

    public int getFuelType() {
        return FuelType;
    }

    public int getTransmission() {
        return Transmission;
    }

    public String getCC() {
        return CubicCapacity;
    }

    public void setId(int _id) {
        this.Id = _id;
    }

    public void setBrand(String _brand) {
        this.Brand = _brand;
    }

    public void setModel(String _model) {
        this.Model = _model;
    }

    public void setCarType(int _carType) {
        this.Type = _carType;
    }

    public void setFuelType(int _fuelType) {
        this.FuelType = _fuelType;
    }

    public void setTransmission(int _transmission) {
        this.Transmission = _transmission;
    }

    public void setCC(String _cc) {
        this.CubicCapacity = _cc;
    }
}
