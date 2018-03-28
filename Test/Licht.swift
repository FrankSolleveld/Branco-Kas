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

    @IBOutlet weak var colorText: UILabel!
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
               _ = button.tag == sender.tag ? (button.layer.borderWidth = 2.0) : (button.layer.borderWidth = 0.0)
                
                // Debug tag
                print(sender.tag)
                
                // If button with tag 0 is pressed, text will change to Rood.
                switch sender.tag   {
                    
                case 0:
                    self.colorText.text="Rood"
                case 1:
                    self.colorText.text="Oranje"
                case 2:
                    self.colorText.text="Geel"
                case 3:
                    self.colorText.text="Groen"
                case 4:
                    self.colorText.text="Licht blauw"
                case 5:
                    self.colorText.text="Donkerblauw"
                case 6:
                    self.colorText.text="Paars"
                case 7:
                    self.colorText.text="Roze"
                case 8:
                    self.colorText.text="Wit"
                    
                default:
                    self.colorText.text="Kleurloos"
                }
                
//                self.colorText.text=colorOfTheButton
                
            }
        }
    }
    
    
}
