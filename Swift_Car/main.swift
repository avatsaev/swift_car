//
//  main.swift
//  Swift_Car
//
//  Created by Vatsaev Aslan on 14/07/2014.
//  Copyright (c) 2014 Aslan Vatsaev. All rights reserved.
//




var car = Car()

//use all fuel and kill tires
for i in 1..<6{
    car.travel(100)
}

//renew everything at pitstop
PitStop.renew(car)

//travel a little
for i in 1..<2{
    car.travel(100)
}