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
    String Career;

    public User(String _name, int _age, String _career) {
        this.Name = _name;
        this.Age = _age;
        this.Career = _career;
    }

    public String Wave() {
        return this.Name + " you are " + this.Age + " years old, " 
                         + "you are " +(Underage() ? "a minor " : "an adult") 
                         + " and you are ready to start a mayor in " + this.Career;
    }
    
    private boolean Underage(){
        return this.Age < 18;
    }      
}
