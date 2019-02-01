//
//  ViewController.swift
//  menu
//
//  Created by retina on 23/01/19.
//  Copyright © 2019 retina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let burgerPrice: Double = 10
    let fishPrice: Double = 20
    let pfPrice: Double = 15

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextView = segue.destination as! CalcViewController
        if (segue.identifier == "burgerSegue") {
            nextView.food = "Burger"
            nextView.price = burgerPrice
            nextView.imageReceived = #imageLiteral(resourceName: "burger.jpg")
        } else if (segue.identifier == "fishSegue") {
            nextView.food = "Fish"
            nextView.price = fishPrice
            nextView.imageReceived = #imageLiteral(resourceName: "peixe.jpg")
        } else {
            nextView.food = "PF"
            nextView.price = pfPrice
            nextView.imageReceived = #imageLiteral(resourceName: "pf.jpg")
        }
    }

}

