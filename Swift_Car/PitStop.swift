//
//  PitStop.swift
//  Swift_Car
//
//  Created by Vatsaev Aslan on 14/07/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//


class PitStop {
    
    
    //using a static method to renew a car
    class func renew(car: Car){
        print("\n----------ENTER Pit Stop-----------\n")
        
        print("\n...Changing tires...")
        for tire in car.tires{
            tire.renew()
            
        }
        print("\n...DONE\n")
        print("\n...Checking tires...\n")
        car.showTires()
        print("\n...Refueling\n")
        car.fuel = 100
        
        print("\n----------EXIT Pit Stop-----------\n")
        

        
    }

}
