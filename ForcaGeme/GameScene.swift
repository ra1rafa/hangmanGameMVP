//
//  GameScene.swift
//  ForcaGeme
//
//  Created by Rafael Passos Farias on 03/09/19.
//  Copyright © 2019 Rafael Passos Farias. All rights reserved.
//

import SpriteKit
import GameplayKit
import AVFoundation

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    //letter A
    var letterA : SKSpriteNode!
    //letter B
    var letterB : SKSpriteNode!
    //letter C
    var letterC : SKSpriteNode!
    //letter D
    var letterD : SKSpriteNode!
    //letter E
    var letterE : SKSpriteNode!
    //letter F
    var letterF : SKSpriteNode!
    //letter G
    var letterG : SKSpriteNode!
    //letter H
    var letterH : SKSpriteNode!
    //letter I
    var letterI : SKSpriteNode!
    //letter J
    var letterJ : SKSpriteNode!
    //letter L
    var letterL : SKSpriteNode!
    //letter M
    var letterM : SKSpriteNode!
    //letter N
    var letterN : SKSpriteNode!
    //letter O
    var letterO : SKSpriteNode!
    //letter P
    var letterP : SKSpriteNode!
    //letter Q
    var letterQ : SKSpriteNode!
    //letter R
    var letterR: SKSpriteNode!
    //letter S
    var letterS : SKSpriteNode!
    //letter T
    var letterT : SKSpriteNode!
    //letter U
    var letterU : SKSpriteNode!
    //letter V
    var letterV : SKSpriteNode!
    //letter X
    var letterX : SKSpriteNode!
    //letter Y
    var letterY : SKSpriteNode!
    //letter W
    var letterW: SKSpriteNode!
    //letter Z
    var letterZ: SKSpriteNode!
    //letter K
    var letterK: SKSpriteNode!
    
    //labels
    var label1: SKLabelNode!
    var label2: SKLabelNode!
    var label3: SKLabelNode!
    var label4: SKLabelNode!
    
    //labels X
    var labelX1: SKLabelNode!
    var labelX2: SKLabelNode!
    var labelX3: SKLabelNode!
    var labelX4: SKLabelNode!
    var labelX5: SKLabelNode!
    var labelX6: SKLabelNode!
    var labelX7: SKLabelNode!
    var labelX8: SKLabelNode!
    var labelX9: SKLabelNode!
    
    var labelXArray: [SKLabelNode] = []
    
    //sound "gato"
    var bombSoundEffect: AVAudioPlayer?
    
    
    override func didMove(to view: SKView) {
        //letters for choose
        letterA = (self.childNode(withName: "A") as! SKSpriteNode)
        letterA.texture = SKTexture(imageNamed: "A")
        
        letterB = (self.childNode(withName: "B") as! SKSpriteNode)
        letterB.texture = SKTexture(imageNamed: "B")
        letterC = (self.childNode(withName: "C") as! SKSpriteNode)
        letterC.texture = SKTexture(imageNamed: "C")
        letterD = (self.childNode(withName: "D") as! SKSpriteNode)
        letterD.texture = SKTexture(imageNamed: "D")
        letterE = (self.childNode(withName: "E") as! SKSpriteNode)
        letterE.texture = SKTexture(imageNamed: "E")
        letterF = (self.childNode(withName: "F") as! SKSpriteNode)
        letterF.texture = SKTexture(imageNamed: "F")
        letterG = (self.childNode(withName: "G") as! SKSpriteNode)
        letterG.texture = SKTexture(imageNamed: "G")
        letterH = (self.childNode(withName: "H") as! SKSpriteNode)
        letterH.texture = SKTexture(imageNamed: "H")
        letterI = (self.childNode(withName: "I") as! SKSpriteNode)
        letterI.texture = SKTexture(imageNamed: "I")
        letterJ = (self.childNode(withName: "J") as! SKSpriteNode)
        letterJ.texture = SKTexture(imageNamed: "J")
        letterL = (self.childNode(withName: "L") as! SKSpriteNode)
        letterL.texture = SKTexture(imageNamed: "L")
        letterM = (self.childNode(withName: "M") as! SKSpriteNode)
        letterM.texture = SKTexture(imageNamed: "M")
        letterN = (self.childNode(withName: "N") as! SKSpriteNode)
        letterN.texture = SKTexture(imageNamed: "N")
        letterO = (self.childNode(withName: "O") as! SKSpriteNode)
        letterO.texture = SKTexture(imageNamed: "O")
        letterP = (self.childNode(withName: "P") as! SKSpriteNode)
        letterP.texture = SKTexture(imageNamed: "P")
        letterQ = (self.childNode(withName: "Q") as! SKSpriteNode)
        letterQ.texture = SKTexture(imageNamed: "Q")
        letterR = (self.childNode(withName: "R") as! SKSpriteNode)
        letterR.texture = SKTexture(imageNamed: "R")
        letterS = (self.childNode(withName: "S") as! SKSpriteNode)
        letterS.texture = SKTexture(imageNamed: "S")
        letterT = (self.childNode(withName: "T") as! SKSpriteNode)
        letterT.texture = SKTexture(imageNamed: "T")
        letterU = (self.childNode(withName: "U") as! SKSpriteNode)
        letterU.texture = SKTexture(imageNamed: "U")
        letterV = (self.childNode(withName: "V") as! SKSpriteNode)
        letterV.texture = SKTexture(imageNamed: "V")
        letterX = (self.childNode(withName: "X") as! SKSpriteNode)
        letterX.texture = SKTexture(imageNamed: "X")
        letterY = (self.childNode(withName: "Y") as! SKSpriteNode)
        letterY.texture = SKTexture(imageNamed: "Y")
        letterW = (self.childNode(withName: "W") as! SKSpriteNode)
        letterW.texture = SKTexture(imageNamed: "W")
        letterK = (self.childNode(withName: "K") as! SKSpriteNode)
        letterK.texture = SKTexture(imageNamed: "K")
        letterZ = (self.childNode(withName: "Z") as! SKSpriteNode)
        letterZ.texture = SKTexture(imageNamed: "Z")
        
        //labels for correct answer
        label1 = (self.childNode(withName: "label1") as! SKLabelNode)
        label2 = (self.childNode(withName: "label2") as! SKLabelNode)
        label3 = (self.childNode(withName: "label3") as! SKLabelNode)
        label4 = (self.childNode(withName: "label4") as! SKLabelNode)
        
        //labels for wrong answer
        labelX1 = (self.childNode(withName: "labelX1") as! SKLabelNode)
        labelX2 = (self.childNode(withName: "labelX2") as! SKLabelNode)
        labelX3 = (self.childNode(withName: "labelX3") as! SKLabelNode)
        labelX4 = (self.childNode(withName: "labelX4") as! SKLabelNode)
        labelX5 = (self.childNode(withName: "labelX5") as! SKLabelNode)
        labelX6 = (self.childNode(withName: "labelX6") as! SKLabelNode)
        labelX7 = (self.childNode(withName: "labelX7") as! SKLabelNode)
        labelX8 = (self.childNode(withName: "labelX8") as! SKLabelNode)
        labelX9 = (self.childNode(withName: "labelX9") as! SKLabelNode)
        
        labelXArray += [labelX1,labelX2,labelX3,labelX4,labelX5,labelX6,labelX7,labelX8,labelX9]

    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first
        
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            if nodesArray.first?.name == nil{
            } else if nodesArray.first?.name == "G"{
                label1.text = nodesArray.first?.name
                letterG.isHidden = true
            } else if nodesArray.first?.name == "A"{
                label2.text = nodesArray.first?.name
                letterA.isHidden = true
            } else if nodesArray.first?.name == "T"{
                label3.text = nodesArray.first?.name
                letterT.isHidden = true
            } else if nodesArray.first?.name == "O"{
                label4.text = nodesArray.first?.name
                letterO.isHidden = true
            } else {
                labelXArray[0].text = nodesArray.first?.name
                labelXArray.remove(at: 0)
                nodesArray.first?.isHidden = true
            }
            if letterA.contains(location){
                letterA.run(SKAction.playSoundFileNamed("A.mp3", waitForCompletion: false))
            } else if letterB.contains(location){
                letterB.run(SKAction.playSoundFileNamed("B.mp3", waitForCompletion: false))
            } else if letterC.contains(location){
                letterC.run(SKAction.playSoundFileNamed("C.mp3", waitForCompletion: false))
            } else if letterD.contains(location){
                letterD.run(SKAction.playSoundFileNamed("D.mp3", waitForCompletion: false))
            } else if letterE.contains(location){
                letterE.run(SKAction.playSoundFileNamed("E.mp3", waitForCompletion: false))
            } else if letterF.contains(location){
                letterF.run(SKAction.playSoundFileNamed("F.mp3", waitForCompletion: false))
            } else if letterG.contains(location){
                letterA.run(SKAction.playSoundFileNamed("G.mp3", waitForCompletion: false))
            } else if letterH.contains(location){
                letterH.run(SKAction.playSoundFileNamed("H.mp3", waitForCompletion: false))
            } else if letterI.contains(location){
                letterI.run(SKAction.playSoundFileNamed("I.mp3", waitForCompletion: false))
            } else if letterJ.contains(location){
                letterJ.run(SKAction.playSoundFileNamed("J.mp3", waitForCompletion: false))
            } else if letterL.contains(location){
                letterL.run(SKAction.playSoundFileNamed("L.mp3", waitForCompletion: false))
            } else if letterM.contains(location){
                letterM.run(SKAction.playSoundFileNamed("M.mp3", waitForCompletion: false))
            } else if letterN.contains(location){
                letterN.run(SKAction.playSoundFileNamed("N.mp3", waitForCompletion: false))
            } else if letterO.contains(location){
                letterO.run(SKAction.playSoundFileNamed("O.mp3", waitForCompletion: false))
            } else if letterP.contains(location){
                letterP.run(SKAction.playSoundFileNamed("P.mp3", waitForCompletion: false))
            } else if letterQ.contains(location){
                letterQ.run(SKAction.playSoundFileNamed("Q.mp3", waitForCompletion: false))
            } else if letterR.contains(location){
                letterR.run(SKAction.playSoundFileNamed("R.mp3", waitForCompletion: false))
            } else if letterS.contains(location){
                letterS.run(SKAction.playSoundFileNamed("S.mp3", waitForCompletion: false))
            } else if letterT.contains(location){
                letterT.run(SKAction.playSoundFileNamed("T.mp3", waitForCompletion: false))
            } else if letterU.contains(location){
                letterU.run(SKAction.playSoundFileNamed("U.mp3", waitForCompletion: false))
            } else if letterV.contains(location){
                letterV.run(SKAction.playSoundFileNamed("V.mp3", waitForCompletion: false))
            } else if letterX.contains(location){
                letterX.run(SKAction.playSoundFileNamed("X.mp3", waitForCompletion: false))
            } else if letterW.contains(location){
                letterW.run(SKAction.playSoundFileNamed("W.mp3", waitForCompletion: false))
            } else if letterY.contains(location){
                letterY.run(SKAction.playSoundFileNamed("Y.mp3", waitForCompletion: false))
            } else if letterK.contains(location){
                letterA.run(SKAction.playSoundFileNamed("K.mp3", waitForCompletion: false))
            } else if letterZ.contains(location){
                letterA.run(SKAction.playSoundFileNamed("Z.mp3", waitForCompletion: false))
            }
        }
        
        
    }
    
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
