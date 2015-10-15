//
//  Car.swift
//  Swift_Car
//
//  Created by Vatsaev Aslan on 14/07/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//



class Car {
    
    let tires: [Tire] = [Tire(), Tire(), Tire(),Tire()]
    
    var kilometers: Double = 0.0
    
    //Swift's computed property
    var fuel: Double{
    
        //property observer
        //called after the value have been changed
        didSet{
            //Control max and min values
            if self.fuel > 100.0{
                self.fuel = 100.0
            }else if self.fuel < 0.0{
                self.fuel = 0.0
            }
            print(self.showTank, terminator: "")
        }
    
    }
    
    
    var color = "Red"
    
    // read only coputed property showing general state of the tank
    var showTank: String{
        return "\nTank is now at \(fuel) liters\nRoad so far: \(kilometers)km\n"
    }
    
    
    init(){
        self.fuel = 100
    }
    
    //makes the tank full
    func fullTank(){
        self.fuel = 100
    }
    
    //adds fuel to tank
    func addTank (addedfuel: Double){
        self.fuel += addedfuel
    }
    
    
    //removes fuel from tank
    func substractTank (substractedfuel: Double){
        self.fuel -= substractedfuel
    }
    
    //shows general condition of all tires
    func showTires(){
        for (index,tire) in self.tires.enumerate(){
            print("-Tire No\(index+1):\n \(tire.showState)\n", terminator: "")
        }
    }
    
    
    //travel reduces fuel, adds kilometers to the counter, and makes tires less and less usable depending on the amount of kimoteres traveled
    func travel(kilometers: Double){
        print ("\nTraveling...\n", terminator: "")
        
        if (self.fuel<=0) {
            
            print("\nWARINIG, CAN'T TRAVEL: There is no more fuel in the tank.\n", terminator: ""); //show warning for the fuel
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
