import UIKit

extension ViewController
{
    func didWeWin()
    {
        if ( foundTilesArr.count == tilesArr.count)
        {
            gameTimer.invalidate()
            let txt = "You Won in \(gameTime / 60)' : \(gameTime % 60)\""
            
            gameWonLabel.isHidden = false
            gameWonLabel.text = txt
        }
    }
}
