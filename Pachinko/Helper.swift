//
//  Helper.swift
//  Project11
//
//  Created by Hudzilla on 22/11/2014.
//  Copyright (c) 2014 Hudzilla. All rights reserved.
//

import Foundation
import UIKit

struct Random {
  static func int(min min: Int, max: Int) -> Int {
    if max < min { return min }
    return Int(arc4random_uniform(UInt32((max - min) + 1))) + min
  }
  
  static func float() -> Float {
    return Float(arc4random()) /  Float(UInt32.max)
  }
  
  static func float(min min: Float, max: Float) -> Float {
    return (Float(arc4random()) / Float(UInt32.max)) * (max - min) + min
  }
  
  static func double(min min: Double, max: Double) -> Double {
    return (Double(arc4random()) / Double(UInt32.max)) * (max - min) + min
  }
  
  static func cgFloat() -> CGFloat {
    return CGFloat(Random.float())
  }
  
  static func cgFloat(min min: Float, max: Float) -> CGFloat {
    return CGFloat(Random.float(min: min, max: max))
  }
  
  static func color() -> UIColor {
    return UIColor(red: Random.cgFloat(), green: Random.cgFloat(), blue: Random.cgFloat(), alpha: 1)
  }
}