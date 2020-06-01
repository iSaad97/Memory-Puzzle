import UIKit

extension ViewController
{
    
    func revealAndCompare(inpTile: MyLabel)
    {
        UIView.transition(with: inpTile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromLeft,
                          animations:
            {
                            inpTile.backgroundColor = UIColor.orange
                            inpTile.text = "\(inpTile.internalNum!)"},
                          completion: { (res) in
                            // do compare
                            self.compare()
                            self.aTileIsAnimation = true
                            
        })
        
        
    }
    
    
    
}
