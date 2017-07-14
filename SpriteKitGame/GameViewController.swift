//
//  GameViewController.swift
//  SpriteKitGame
//
//  Created by Robo Atenaga on 7/14/17.
//  Copyright © 2017 Robo Atenaga. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // SKViews are views that contain a "Scene"
        let scene = GameScene(size: view.bounds.size)
        let skView = view as! SKView
        
        scene.scaleMode = .resizeFill
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        skView.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
