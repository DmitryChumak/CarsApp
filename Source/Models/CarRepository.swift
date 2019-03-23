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
        let honda = Car(model: "Honda", productionYear: 2008, color: "Black", image: "honda", history: "No history")
        
        cars.append(honda)
        cars.append(Car(model: "Ferrari", productionYear: 2015, color: "Red", image: "ferrari", history: "No history"))
        cars.append(Car(model: "Lexus", productionYear: 2000, color: "White", image: "lexus", history: "No history"))
        cars.append(Car(model: "BMW", productionYear: 2010, color: "Green", image: "bmw", history: "No history"))
        cars.append(Car(model: "Audi", productionYear: 2011, color: "Blue", image: "audi", history: "No history"))
        cars.append(Car(model: "Mercedes", productionYear: 2012, color: "Black", image: "mercedes", history: "No history"))
    }
    
}
