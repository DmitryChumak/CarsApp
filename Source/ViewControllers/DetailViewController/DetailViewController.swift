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
        // Do any additional setup after loading the view.
    }
    

    func config(for car: Car) {
        self.car = car
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
