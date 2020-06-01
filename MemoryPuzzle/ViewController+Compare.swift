import UIKit

extension ViewController
{
    
    func compare()
    {
        if ( firtTile.internalNum == secondTile.internalNum)
        {
            print("Same")
            flipToSmile(inpTile: firtTile)
            flipToSmile(inpTile: secondTile)
            
            foundTilesArr.append(firtTile)
            foundTilesArr.append(secondTile)
            
            didWeWin()
            
        }
        else
        {
            print("Different")
            flipBack(inpTile: firtTile)
            flipBack(inpTile: secondTile)
        }
    }
    
}
