//
//  CarRepository.swift
//  CarsApp
//
//  Created by Dmitry on 3/22/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import Foundation


class CarRepository {
    var cars = [Car]()
    init() {
        let honda = Car("Honda",2008,"Black","honda")
        honda.history = "History of Honda"
        cars.append(honda)
        cars.append(Car("Ferrari",2015,"Red","ferrari"))
        cars.append(Car("Lexus",2000,"White","lexus"))
        cars.append(Car("BMW",2010,"Green","bmw"))
        cars.append(Car("Audi",2011,"Blue","audi"))
        cars.append(Car("Mercedes",2012,"Black","mercedes"))
    }
    
}
