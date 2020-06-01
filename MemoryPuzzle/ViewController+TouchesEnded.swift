import UIKit

extension ViewController {
    
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if(aTileIsAnimation){
            return
        }
        
        let myTouch = touches.first
        
        if let tappedTile = myTouch?.view as? MyLabel {
            
            if(foundTilesArr.contains(tappedTile))
            {
                return
            }
            
            aTileIsAnimation = true
            
            if (compareNow){
                if(tappedTile == firtTile)
                {
                    aTileIsAnimation = false
                    return
                    
                }
                secondTile = tappedTile
                revealAndCompare(inpTile: tappedTile)
            }
            else {
                firtTile  = tappedTile
                flipToReveal(inpTile: tappedTile)
            }
            
            compareNow = !compareNow 
            
        }
        
    }
}
