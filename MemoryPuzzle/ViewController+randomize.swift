import  UIKit

extension ViewController{
    
    
    func randomize(){
        /* let rememer all the tiles
         let remember all the centers */
        
        // keep temp center array for the reset button later
        var tempCenArr = centersArr
        
        for anyTile in tilesArr {
            
            let randomIndex : Int = Int(arc4random_uniform(UInt32(tempCenArr.count)))
            
            let randomCenter = tempCenArr[randomIndex]
            
            anyTile.center = randomCenter
            
            tempCenArr.remove(at: randomIndex)
            
        }
    }
    
    
}
