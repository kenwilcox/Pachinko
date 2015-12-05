//
//  GameScene.swift
//  Pachinko
//
//  Created by Kenneth Wilcox on 12/3/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
  
  override func didMoveToView(view: SKView) {
    /* Setup your scene here */
    let background = SKSpriteNode(imageNamed: "background.jpg")
    background.position = CGPoint(x: 512, y: 384)
    background.blendMode = .Replace
    background.zPosition = -1
    addChild(background)
    physicsBody = SKPhysicsBody(edgeLoopFromRect: frame)
  }
  
  override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    /* Called when a touch begins */
    if let touch = touches.first {
      let location = touch.locationInNode(self)
      let ball = SKSpriteNode(imageNamed: "ballRed")
      ball.physicsBody = SKPhysicsBody(circleOfRadius: ball.size.width / 2.0)
      ball.physicsBody!.restitution = 0.4
      ball.position = location
      addChild(ball)
    }
  }
  
  override func update(currentTime: CFTimeInterval) {
    /* Called before each frame is rendered */
  }
}
