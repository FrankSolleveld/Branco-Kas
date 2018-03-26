//
//  Licht.swift
//  Test
//
//  Last edited by Frank Solleveld on 21-03-18.
//  Copyright © 2018 Hugo Schmidt. All rights reserved.
//

import UIKit

class Licht: UIViewController {
    
    // Link alle knoppen met de code. Check ToggleTheButtons.swift voor de toggle functies.
    @IBOutlet weak var redButton: ToggleTheButtons!
    @IBOutlet weak var orangeButton: ToggleTheButtons!
    @IBOutlet weak var yellowButton: ToggleTheButtons!
    @IBOutlet weak var greenButton: ToggleTheButtons!
    @IBOutlet weak var lightBlueButton: ToggleTheButtons!
    @IBOutlet weak var darkBlueButton: ToggleTheButtons!
    @IBOutlet weak var purpleButton: ToggleTheButtons!
    @IBOutlet weak var pinkButton: ToggleTheButtons!
    @IBOutlet weak var whiteButton: ToggleTheButtons!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        func databaseConnection() {
            
            // Hier komt de connectie met de database. 
            
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
