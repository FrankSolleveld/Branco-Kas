//
//  ToggleTheButtons.swift
//  Test
//
//  Created by Frank Solleveld on 26-03-18.
//  Copyright © 2018 Hugo Schmidt. All rights reserved.
//

import UIKit

class ToggleTheButtons: UIButton {

    var isOn = true
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        initButton()
        
    }
    
    required init?(coder aDecoder: NSCoder){
        
        super.init(coder:aDecoder)
        initButton()
        
    }
    
    func initButton(){
        
        layer.borderWidth = 2.0
    
        addTarget(self, action: #selector(ToggleTheButtons.buttonPressed), for: .touchUpInside)
        
    }
    
    @objc func buttonPressed() {
        
        activateButton(bool: !isOn)
        
    }
    
    func activateButton(bool: Bool) {
        
        isOn = bool
        
        // Ternary operator. Na het vraagteken krijg je de waardes die worden uitgekeert in true:false (Boolean is nodig)
        let borderColorOfTheButton = bool ? UIColor.black : .clear
        layer.borderColor = (borderColorOfTheButton as! CGColor)
        
        
    }

}
