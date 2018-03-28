//
//  Licht.swift
//  Test
//
//  Last edited by Frank Solleveld on 21-03-18.
//  Copyright © 2018 Hugo Schmidt. All rights reserved.
//

import UIKit

class Licht: UIViewController {
    
    // Link alle knoppen met de code. Check ToggleTheButtons.swift voor de toggle functies. Misschien een IBAction.

    @IBOutlet var toggleButtons : [ToggleTheButtons]! = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func didTapButton(_ sender: UIButton) {
        for button in self.view.subviews as [UIView] {
            if button is UIButton {
                // Do whatever you want
                Button.layer.borderWidth = Button.tag == sender.tag ? (Button.borderWidth = 2.0) : (Button.borderWidth = 0.0)
            }
        }
    }
    
    
}
