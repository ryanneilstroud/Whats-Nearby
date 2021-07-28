//
//  Scene.swift
//  Project 2b
//
//  Created by Ryan Neil Stroud on 28/7/2021.
//

import SpriteKit
import ARKit

class Scene: SKScene {
    
    var didTouchSprite: ((String) -> Void)?
    
    override func didMove(to view: SKView) {
        // Setup your scene here
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let touch = touches.first else { return }
        
        let location = touch.location(in: self)
        let hit = nodes(at: location)
        
        if let sprite = hit.first, let name = sprite.name {
            didTouchSprite?(name)
        }
    }
}
