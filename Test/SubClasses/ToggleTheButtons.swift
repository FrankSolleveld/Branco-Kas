//
//  ToggleTheButtons.swift
//  Test
//
//  Created by Frank Solleveld on 26-03-18.
//  Copyright © 2018 Hugo Schmidt. All rights reserved.
//

import UIKit

class ToggleTheButtons: UIButton {

    // Buttons are all off on load.
    var isOn = false
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        initButton()
        
    }
    
    required init?(coder aDecoder: NSCoder){
        
        super.init(coder:aDecoder)
        initButton()
        
    }
    
    func initButton(){
        // Initializes the button.
        layer.borderWidth = 0.0
    
        addTarget(self, action: #selector(ToggleTheButtons.buttonPressed), for: .touchUpInside)
        
    }
    
    // What happens when we press the buttons.
    @objc func buttonPressed() {

        activateButton(bool: !isOn)


    }

    // Toggles button on and off.
    func activateButton(bool: Bool) {

        isOn = bool
        _ = layer.borderWidth = 0.0
        // Ternary operator. true:false (Boolean is nodig)
        _ = bool ? (layer.borderWidth = 2.0) : (layer.borderWidth = 0.0)
//        layer.borderColor = (borderColorOfTheButton as! CGColor)


    }

    
    
    
}
