//
//  File.swift
//  Sooq_UI
//
//  Created by Ahmed on 04/08/2025.
//

import UIKit

public extension UIFont {
    enum CairoFontWeight: String {
        case regular = "Cairo-Regular"
        case semiBold = "Cairo-semiBold"
        case bold = "Cairo-bold"
    }
    
    static func cairoFont(weight: CairoFontWeight, size: CGFloat) -> UIFont {
        return UIFont(name: weight.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static var buttonTitle: UIFont {
        return cairoFont(weight: .semiBold, size: 14)
    }
}
