//
//  GameScene.swift
//  Pong2
//
//  Created by Jared Davidson on 10/11/16.
//  Copyright © 2016 Archetapp. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
   
    var ball = SKSpriteNode()
    
    override func didMove(to view: SKView) {
 
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        ball.physicsBody?.applyImpulse(CGVector(dx: 30, dy: 20))
        let border  = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 1
        self.physicsBody = border

    }

}







