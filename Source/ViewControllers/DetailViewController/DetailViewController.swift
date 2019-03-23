//
//  DetailViewController.swift
//  CarsApp
//
//  Created by Dmitry on 3/22/19.
//  Copyright © 2019 Dmitry. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    private var car: Car?
    @IBOutlet private var historyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyLabel.text = car?.history
    }
    
    func configure(for car: Car) {
        self.car = car
    }
    
}
