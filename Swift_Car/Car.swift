//
//  Car.swift
//  Swift_Car
//
//  Created by Vatsaev Aslan on 14/07/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//

import Cocoa

class Car {
    
    var tires: Tire[] = [Tire(), Tire(), Tire(),Tire()]
    var kilometers: Int = 0
    var essence: Int{
        didSet{
            if self.essence > 100{
                self.essence = 100
            }else if self.essence < 0{
                self.essence = 0
            }
            print(self.showTank)
        }
    }
    var color = "Red"
    
    var showTank: String{
        return "\nTank is now at \(essence) litters\nRoad so far: \(kilometers)km\n"
    }
    
    
    init(){
        self.essence = 100
    }
    
    func fullTank(){
        self.essence = 100
    }
    
    func addTank (addedEssence: Int){
        self.essence += addedEssence
    }
    
    func substractTank (substractedEssence: Int){
        self.essence -= substractedEssence
    }
    
    
    func showTires(){
        for (index,tire) in enumerate(self.tires){
            print("-Tire No\(index+1):\n \(tire.showState)\n")
        }
    }
    
    func travel(kilometers: Int){
        
        if (self.essence<=0) {
            print("\nWARINIG: There is no more fuel in the tank.\n"); //show waring for the fuel
        }else{
            self.kilometers += kilometers
            self.substractTank(kilometers/4)
            
            for tire in self.tires{
   
                tire.condition = tire.condition - self.kilometers/4;
                tire.pressure = tire.pressure - self.kilometers/16;
                
                
            }//for loop
            
        }//else
        
    }
    
    

}
