//
//  ColorAttributeTransformerf.swift
//  BowTies
//
//  Created by Mircea Egry on 27/10/2022.
//  Copyright © 2022 Razeware. All rights reserved.
//

import UIKit

class ColorAttributeTransformer: NSSecureUnarchiveFromDataTransformer {

  override class var allowedTopLevelClasses: [AnyClass] {
    [UIColor.self]
  }
  
  static func register() {
    let className = String(describing: ColorAttributeTransformer.self)
    let name = NSValueTransformerName(className)
    
    let transformer = ColorAttributeTransformer()
    ValueTransformer.setValueTransformer(transformer, forName: name)
  }
}
