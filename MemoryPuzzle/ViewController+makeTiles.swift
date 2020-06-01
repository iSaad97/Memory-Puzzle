import  UIKit

extension ViewController{

    func makeTiles() {
        
        tilesArr = []
        centersArr = []
        
        tileSize = gameView.frame.size.width / CGFloat (gameMode)
        
        let tileCGsize = CGSize (width: tileSize - 5,
                                 height: tileSize - 5 )
        var xCen = tileSize / 2.0
        var yCen = tileSize / 2.0
        var counter = 0
        
        
        for _ in 0..<gameMode // vertical tile
        {
            for _ in 0..<gameMode // horizointal tile
            {
                let tile = MyLabel ( frame: CGRect(origin: CGPoint.zero,
                                                   size: tileCGsize))
                
                tile.font = UIFont.systemFont(ofSize: 14,
                                              weight: UIFont.Weight.bold)
                
                tile.textAlignment = NSTextAlignment.center
                
                let tileCen = CGPoint(x: xCen,
                                      y: yCen)
                if (counter == gameMode * gameMode / 2 ){
                    counter = 0
                }
                tile.isUserInteractionEnabled = true
                
                tile.internalNum = counter
                tile.text = "\(MyLabel.question)"
                tilesArr.append(tile)
                centersArr.append(tileCen)
                
                
                
                counter += 1
                tile.center = tileCen
                xCen += tileSize
                
                
                tile.backgroundColor = UIColor.darkGray
                gameView.addSubview(tile)
            }
            xCen = tileSize / 2
            yCen += tileSize
        }
    }
}
