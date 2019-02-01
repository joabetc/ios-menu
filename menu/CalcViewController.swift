//
//  CalcViewController.swift
//  menu
//
//  Created by retina on 24/01/19.
//  Copyright © 2019 retina. All rights reserved.
//

import UIKit

class CalcViewController: UIViewController {
    
    var price: Double = 0
    var food: String = ""
    var qtt: Int = 0
    var imageReceived: UIImage?
    @IBOutlet var lblFood: UILabel?
    @IBOutlet var lblPrice: UILabel?
    @IBOutlet var image: UIImageView!
    @IBOutlet var lblQtt: UILabel?
    @IBOutlet var stepper: UIStepper?
    @IBOutlet var lblTotal: UILabel?

    override func viewDidLoad() {
        super.viewDidLoad()

        lblFood?.text = food
        lblPrice?.text = String(describing: price)
        image.image = imageReceived
        lblQtt?.text = String(qtt)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func stepperValueChanged(sender: UIStepper) {
        lblQtt?.text = Int(sender.value).description
        lblTotal?.text = String(Double(sender.value) * price)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
