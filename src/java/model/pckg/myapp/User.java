/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model.pckg.myapp;

/**
 *
 * @author Personal
 */
public class User {

    String Name;
    int Age;

    public User(String _name, int _age) {
        this.Name = _name;
        this.Age = _age;
    }

    public String Wave() {
        return "Hello, my name is " + this.Name + ", I am " + this.Age + " years old.";
    }
}
