//
//  WaterClass.swift
//  Test
//
//  Created by Frank Solleveld on 04-04-18.
//  Copyright © 2018 Hugo Schmidt. All rights reserved.
//

import UIKit

// Extension for UIColor, check line 70 to see how easier it is to write the rgb line of code.
extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}

class Water: UIViewController {
    
    
    @IBOutlet weak var waterLabel: UILabel!
    
    // Initialiseert de staat van de knop
    var buttonState = 0;
    
    // Maakt functie met de alert erin als user nogmaals op de knop drukt.
    func waterError() {
        
        let alertController = UIAlertController(title: "Melding", message: "Wil je je plantje verzuipen?", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Sorry!", style: UIAlertActionStyle.default,handler: nil))
        
        self.present(alertController, animated: true, completion: nil)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func waterToggle(_ sender: UIButton) {
        
        if buttonState == 0 {
            
            // Maak knop grijs en zorg ervoor dat hij niet ingedrukt kan worden.
             view?.backgroundColor = UIColor(white: 1, alpha: 0.5)
             self.waterLabel.text="Water wordt afgegeven."
             buttonState = 1
            
            // Dit is de timer.
            DispatchQueue.main.asyncAfter(deadline: .now() + 10){
                
                // Er kan weer na 10 seconden water gegeven worden.
                self.buttonState = 0
                self.waterLabel.text="Klik om water te geven."
                
                // Background color wordt na 10 seconder weer blauw.
                self.view?.backgroundColor = UIColor(red: 90, green: 200, blue: 250)
                
            }
            
        } else if buttonState == 1 {
            
            // Je kan pas na 10 seconden weer water geven, vandaar de error.
            waterError()
        
        }
    
    }
}
