import UIKit

extension ViewController
{
    
    func flipBack(inpTile : MyLabel)
    {
        UIView.transition(with: inpTile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromRight,
                          animations: {
                            inpTile.backgroundColor = UIColor.darkGray
                            inpTile.text = "\(MyLabel.question)"
        }, completion: {(res) in
            
            self.aTileIsAnimation = false
        })
    }
    
}
    

