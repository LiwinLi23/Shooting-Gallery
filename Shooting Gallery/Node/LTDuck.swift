//
//  LTDuck.swift
//  Shooting Gallery
//
//  Created by 李涛 on 2020/6/30.
//  Copyright © 2020 Leonard Chan. All rights reserved.
//

import Foundation
import SpriteKit

class LTDuck : SKNode {
    var hasTarget : Bool? = false
    
    init(hasTarget : Bool = false) {
        super.init(); self.hasTarget = hasTarget
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
