
import  UIKit

extension ViewController{
    
    
    @IBAction func resetAction(_ sender: Any) {
        
        //set game time = 0
        // re randomize evert tile
        
        
        gameTime = 0
        foundTilesArr = []
        gameWonLabel.isHidden = true
        
        firtTile = nil
        secondTile = nil
        compareNow = false
        
        
        for any in tilesArr{
            any.removeFromSuperview()
        }
        makeTiles()
        randomize()
        
        if gameTimer != nil {
            gameTimer.invalidate()
            timeLabel.text = "00\' : 00\""
        }
        gameTimer = Timer.scheduledTimer(timeInterval: 1.0,
                                         target: self,
                                         selector: #selector(timerFunc),
                                         userInfo: nil,
                                         repeats: true)
    }
}
