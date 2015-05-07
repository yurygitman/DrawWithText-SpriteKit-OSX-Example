//
//  GameScene.swift
//  DrawWithText-SpriteKit-OSX-Example
//
//  Created by GrownYoda on 5/7/15.
//  Copyright (c) 2015 yuryg. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        self.backgroundColor = SKColor.blackColor()
    }
    
    override func mouseDown(theEvent: NSEvent) {
        /* Called when a mouse click occurs */
        touchToMakeText("i", location: theEvent.locationInNode(self))
        
        
    }
    
    override func   mouseDragged(theEvent: NSEvent) {
        touchToMakeText("i", location: theEvent.locationInNode(self))
    }
    
    override func update(currentTime: CFTimeInterval) {
        
        /* Called before each frame is rendered */
    }
    
    
    func touchToMakeText(passedString:String, location: CGPoint){
        
        let myLabel = SKLabelNode(fontNamed:"")
        myLabel.text = passedString;
        myLabel.fontSize = 65;
        myLabel.position = location;
        
        let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
        myLabel.runAction(SKAction.repeatActionForever(action))
        
        
        self.addChild(myLabel)
        
        
    }
    
    
    
    func touchToMakeImageAtlocation(location: CGPoint){
        
        
        let location = location
        
        let sprite = SKSpriteNode(imageNamed:"Spaceship")
        sprite.position = location;
        sprite.setScale(0.5)
        
        let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
        sprite.runAction(SKAction.repeatActionForever(action))
        
        self.addChild(sprite)
        
        
        
    }
    
}
