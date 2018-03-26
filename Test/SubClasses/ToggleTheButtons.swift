//
//  ToggleTheButtons.swift
//  Test
//
//  Created by Frank Solleveld on 26-03-18.
//  Copyright © 2018 Hugo Schmidt. All rights reserved.
//

import UIKit

class ToggleTheButtons: UIButton {

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
    
    @objc func buttonPressed() {
        
        activateButton(bool: !isOn)
        
    }
    
    func activateButton(bool: Bool) {
        
        isOn = bool
        
        // Ternary operator. Na het vraagteken krijg je de waardes die worden uitgekeert in true:false (Boolean is nodig)
        _ = bool ? (layer.borderWidth = 2.0) : (layer.borderWidth = 0.0)
//        layer.borderColor = (borderColorOfTheButton as! CGColor)
        
        
    }

}
