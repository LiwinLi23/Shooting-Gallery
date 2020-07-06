//
//  LTStageScene.swift
//  Shooting Gallery
//
//  Created by 李涛 on 2020/6/30.
//  Copyright © 2020 Leonard Chan. All rights reserved.
//

import Foundation
import SpriteKit

class LTScene : SKScene {
    
    private var duckMoveDuration: TimeInterval?
    
    override func didMove(to view: SKView) {
//        let node = createDuck(hasTarget: true)
//        node.position = CGPoint(x: 240, y: 160)
//        node.zPosition = 6
//        self.addChild(node)
        self.activeDucks()
    }
}

// Mark: Action
extension LTScene {
    func createDuck(hasTarget:Bool = false) -> LTDuck {
        let node = LTDuck(hasTarget: hasTarget);
        let duckNodeName = hasTarget ? "duck_target" : "duck";
        let duckImgName = "\(duckNodeName)/\(Int.random(in: 1...3))";
        let texture = SKTexture(imageNamed: duckImgName)
        let duck = SKSpriteNode(texture: texture); duck.name = duckNodeName; duck.position = CGPoint(x: 0, y: 140)
        let stick = SKSpriteNode(imageNamed: "stick/\(Int.random(in: 1...2))")
        stick.anchorPoint = CGPoint(x:0.5, y:0); stick.position = CGPoint(x:0, y:0)
        duck.xScale = 0.8; duck.yScale = 0.8; stick.xScale = 0.8; stick.yScale = 0.8
        node.addChild(stick); node.addChild(duck)
        
        return node
    }
    
    func activeDucks() {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { timer in
            let duck = self.createDuck(hasTarget: Bool.random())
            duck.position = CGPoint(x: -10, y: Int.random(in: 60...90))
            duck.zPosition = Bool.random() ? 4 : 6
            self.scene?.addChild(duck)
            
            self.duckMoveDuration = TimeInterval(Int.random(in:
                duck.hasTarget! ? (2...4) : (5...7)))
            
            duck.run(.sequence([.moveTo(x: 850, duration: self.duckMoveDuration ?? 3), .removeFromParent()]))
        })
    }
}
