//
//  Tire.swift
//  Swift_Car
//
//  Created by Vatsaev Aslan on 14/07/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//

import Cocoa

class Tire{
    

    //Swift's computed property
    var pressure: Int {
    
    
        //property observer
        //called after 'pressure' value have been changed
        didSet{
            //controlling values (no negative, max value is 25)
            if self.pressure < 0{
                self.pressure = 0
            }else if self.pressure > 25{
                self.pressure = 25
            }
            
            //Show warning for low pressure
            if (self.pressure < 5){
                //print("\nWARINIG: Tire is no longer usable! \nPressure: \(self.pressure)\n")
                
            }
        }
    
    }

    //Value representing tires condition from 0 (dead) to 100 (new)
    var condition: Int{

        didSet{
            
            if self.condition<0{
                self.condition = 0
            }else if self.condition>100{
                self.condition = 100
            }
            
            //Update human readable condition state
            switch self.condition{
                case 100:
                    conditionState = "New"
                case 75..100:
                    conditionState = "Good"
                case 50..75:
                    conditionState = "Mediocre"
                case 10..50:
                    conditionState = "Bad"
                case 0...10:
                    conditionState = "Dead"
                default:
                    conditionState = "No tires"
            }
            
        
            if (self.condition < 10 ){
                //print("\nWARINIG: Tire is no longer usable! \nCondition:\(self.conditionState)\n")
            }
        }
    
    }
    
    var conditionState: String = "New"
    
    // read only coputed property showing general state of the tire
    var showState : String {
        return "\nPressure: \(pressure)\nCondition: \(conditionState) (\(condition))\n"
    }

    
    init(){
        self.condition = 100
        self.pressure = 25
    }
    
    
    func renew (){
        self.pressure = 25
        self.condition = 100
    }
    
    


}
