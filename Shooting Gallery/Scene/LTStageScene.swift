//
//  LTStageScene.swift
//  Shooting Gallery
//
//  Created by 李涛 on 2020/6/30.
//  Copyright © 2020 Leonard Chan. All rights reserved.
//

import Foundation
import SpriteKit

class LTStageScene : SKScene {
    override func didMove(to view: SKView) {
    }
}

// Mark: Action
extension LTStageScene {
    func createDuck(hasTarget:Bool = false) -> LTDuck {
        var duck:SKSpriteNode; var stick:SKSpriteNode; var node = LTDuck(hasTarget: hasTarget);
        let duckNodeName = hasTarget ? "duck_target" : "duck";
        let duckImgName = "\(duckNodeName)/\(Int.random(in: 1...3))";
        
        
        return node
    }
}
