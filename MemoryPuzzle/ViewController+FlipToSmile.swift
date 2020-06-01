import UIKit

extension ViewController
{
    func flipToSmile (inpTile: MyLabel)
    {
        UIView.transition(with: inpTile,
                          duration: 0.5,
                          options: UIView.AnimationOptions.transitionFlipFromLeft,
                          animations: {
                            inpTile.backgroundColor = UIColor.green
                            inpTile.text = "\(MyLabel.smile)"
        },completion: {(res) in
            
            self.aTileIsAnimation = false
        })
    }
}
