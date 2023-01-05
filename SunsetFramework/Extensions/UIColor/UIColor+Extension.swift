//
//  UIColor+Extension.swift
//  Sunset
//
//  Created by Brian Veitch on 12/27/22.
//

import Foundation
import UIKit

public extension UIColor {
    convenience init?(hex1: String) {
        let r, g, b, a: CGFloat

        if hex1.hasPrefix("#") {
            let start = hex1.index(hex1.startIndex, offsetBy: 1)
            let hexColor = String(hex1[start...])

            if hexColor.count == 8 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                    b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                    a = CGFloat(hexNumber & 0x000000ff) / 255

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }
        return nil
    }
}
