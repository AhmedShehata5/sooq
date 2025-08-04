//
//  File.swift
//  Sooq_UI
//
//  Created by Ahmed on 04/08/2025.
//

import UIKit

public extension UIButton {
    
    enum buttonStyle {
        case filledStyle(fontStyle: UIFont)
        case borderStyle(fontStyle: UIFont)
        case disabledStyle(fontStyle: UIFont)
        case filledWithImage(fontStyle: UIFont, imageName: String)
    }
    
    func applyButtonStyle(_ style: buttonStyle) {
        switch style {
            
            
        case .filledStyle(fontStyle: let fontStyle):
            filledStyle(fontStyle: fontStyle)
        case .borderStyle(fontStyle: let fontStyle):
            borderStyle(fontStyle: fontStyle)
        case .disabledStyle(fontStyle: let fontStyle):
            disabledStyle(fontStyle: fontStyle)
        case .filledWithImage(fontStyle: let fontStyle, imageName: let imageName):
            filledWithImage(fontStyle: fontStyle, imageName: imageName)
            
        }
    }
    
    
    func filledStyle(fontStyle: UIFont) {
        titleLabel?.font = fontStyle
        tintColor = .primaryPureWhite
        layer.cornerRadius = 10
        layer.masksToBounds = true
        backgroundColor = .primaryBlueOcean
    }
    
    
    func borderStyle(fontStyle: UIFont) {
        titleLabel?.font = fontStyle
        tintColor = .primaryNavyBlack
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = UIColor.primaryNavyBlack?.cgColor
        layer.masksToBounds = true
        backgroundColor = .primaryPureWhite
    }
    
    func disabledStyle(fontStyle: UIFont) {
        titleLabel?.font = fontStyle
        tintColor = .primaryPureWhite
        layer.cornerRadius = 10
        layer.masksToBounds = true
        backgroundColor = .secondaryHalfGrey
    }
    
    func filledWithImage(fontStyle: UIFont, imageName: String) {
        
        titleLabel?.font = fontStyle
        tintColor = .primaryPureWhite
        layer.cornerRadius = 10
        layer.masksToBounds = true
        backgroundColor = .secondaryRedVelvet
        
        semanticContentAttribute = .forceRightToLeft

        if #available(iOS 13.0, *) {
            let image = UIImage(systemName: imageName)
            setImage(image, for: .normal)
        } else {
            // Fallback on earlier versions
        }

        
        
            imageEdgeInsets = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: -8)
            titleEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 8)
            
            contentEdgeInsets = UIEdgeInsets(top: 8, left: 12, bottom: 8, right: 12)

    }
}
