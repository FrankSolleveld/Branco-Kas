//
//  ViewController.swift
//  Test
//
//  Created by Hugo Schmidt on 19-03-18.
//  Copyright © 2018 Hugo Schmidt. All rights reserved.
//

import UIKit

class Temperatuur: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBAction func stepper(_ sender: UIStepper) {
        let temperature = Int(sender.value)
        label.text = String(temperature) + "°C"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

