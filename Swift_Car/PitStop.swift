//
//  PitStop.swift
//  Swift_Car
//
//  Created by Vatsaev Aslan on 14/07/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//

import Cocoa

class PitStop {
    
    class func renew(car: Car){
        print("\n----------ENTER Pit Stop-----------\n")
        
        print("\n...Changing tires")
        for tire in car.tires{
            tire.renew()
            print(tire.showState)
        }
        print("\n...Refueling")
        car.essence = 100
        

        
    }

}
