//
//  GameOverScene.swift
//  SpriteKitGame
//
//  Created by Robo Atenaga on 7/14/17.
//  Copyright © 2017 Robo Atenaga. All rights reserved.
//

import Foundation
import SpriteKit

class GameOverScene: SKScene {
    
    // init GameOverScene with a size and bool won
    init(size: CGSize, won:Bool) {
        
        super.init(size: size)
        
        backgroundColor = SKColor.yellow
        
        let message = won ? "You Rock!👏🏾" : "Loser!😢"
        
        let label = SKLabelNode(fontNamed: "Chalkduster")
        label.text = message
        label.fontSize = 40
        label.fontColor = SKColor.black
        label.position = CGPoint(x: size.width/2, y: size.height/2)
        addChild(label)
        
        run(SKAction.sequence([
            SKAction.wait(forDuration: 3.0),
            SKAction.run() {
                let reveal = SKTransition.flipVertical(withDuration: 0.5)
                let scene = GameScene(size: size)
                self.view?.presentScene(scene, transition:reveal)
            }
            ]))
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
