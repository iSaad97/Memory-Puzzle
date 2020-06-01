//
//  ViewController.swift
//  MemoryPuzzle
//
//  Created by saad aleissa on 5/18/19.
//  Copyright © 2019 Saad Aleissa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var gameWonLabel: UILabel!
    
    
    var gameMode : Int = 4
    var tileSize : CGFloat!
    
    /* let rememer all the tiles
     let remember all the centers
     let go through the tiles
     and assign a random center
     */
    
    var tilesArr : Array <MyLabel>! = []
    var centersArr : Array <CGPoint> = []
    
    var gameTime : Int = 0
    var gameTimer : Timer!
    
    var firtTile: MyLabel!
    var secondTile : MyLabel!
    var compareNow = false
    
    var foundTilesArr : Array <MyLabel> = []
    
    var aTileIsAnimation = false
    
    
    
    
    
    
}

