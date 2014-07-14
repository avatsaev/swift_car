//
//  main.swift
//  Swift_Car
//
//  Created by Vatsaev Aslan on 14/07/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//

import Foundation


var car = Car()


for i in 1..6{
    car.travel(40)
}

PitStop.renew(car)

for i in 1..3{
    car.travel(100)
}