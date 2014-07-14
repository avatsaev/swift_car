//
//  Car.swift
//  Swift_Car
//
//  Created by Vatsaev Aslan on 14/07/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//

import Cocoa

class Car {
    
    let tires: Tire[] = [Tire(), Tire(), Tire(),Tire()]
    
    var kilometers: Int = 0
    
    //Swift's computed property
    var fuel: Int{
    
    
        didSet{
            //Control max and min values
            if self.fuel > 100{
                self.fuel = 100
            }else if self.fuel < 0{
                self.fuel = 0
            }
            print(self.showTank)
        }
    
    }
    
    
    var color = "Red"
    
    // read only coputed property showing general state of the tank
    var showTank: String{
        return "\nTank is now at \(fuel) litters\nRoad so far: \(kilometers)km\n"
    }
    
    
    init(){
        self.fuel = 100
    }
    
    //makes the tank full
    func fullTank(){
        self.fuel = 100
    }
    
    //adds fuel to tank
    func addTank (addedfuel: Int){
        self.fuel += addedfuel
    }
    
    
    //removes fuel from tank
    func substractTank (substractedfuel: Int){
        self.fuel -= substractedfuel
    }
    
    //shows general condition of all tires
    func showTires(){
        for (index,tire) in enumerate(self.tires){
            print("-Tire No\(index+1):\n \(tire.showState)\n")
        }
    }
    
    
    //travel reduces fuel, adds kilometers to the counter, and makes tires less and less usable depending on the amount of kimoteres traveled
    func travel(kilometers: Int){
        print ("\nTraveling...\n")
        
        if (self.fuel<=0) {
            
            print("\nWARINIG, CANT'T TRAVEL: There is no more fuel in the tank.\n"); //show waring for the fuel
        }else{
            self.kilometers += kilometers
            self.substractTank(kilometers/4)
            
            for tire in self.tires{
                
                tire.condition = tire.condition - kilometers/4;
                tire.pressure = tire.pressure - kilometers/16;
                
                
            }//for loop
            
            self.showTires()
            
        }//else
        
    }
    
    

}
