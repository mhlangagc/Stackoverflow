//
//  Colour.swift
//  StackOverflow
//
//  Created by Gugulethu on 2021/02/07.
//

import UIKit

final class Colour {
    
    //  Black & White
    static let pale         = UIColor(named: "pale") ?? Colour.hexToUIColor("EDEDED")
    static let lightGrey    = UIColor(named: "lightGrey") ?? Colour.hexToUIColor("8F8E64")
    static let grey         = UIColor(named: "grey") ?? Colour.hexToUIColor("727272")
    static let black        = UIColor(named: "black") ?? Colour.hexToUIColor("000000")
    static let white        = UIColor(named: "white") ?? Colour.hexToUIColor("FFFFFF")
    
    //  Colour
    static let primary      = Colour.hexToUIColor("4078C4")
}

extension Colour {
    
    fileprivate static func hexToUIColor(_ hex: String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()

        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }

        if ((cString.count) != 6) {
            return UIColor.gray
        }

        var rgbValue:UInt64 = 0
        Scanner(string: cString).scanHexInt64(&rgbValue)

        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
}
