//
//  ViewController.swift
//  MagicEightBall
//
//  Created by Speer, Michael on 7/20/18.
//  Copyright © 2018 Michael Speer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var eightBallImage: UIImageView!
    var eightBallRandom : Int = 1
    
    let eightBallArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeEightBallImage()
    }
    
    func generateRandom(){
        eightBallRandom = Int(arc4random_uniform(5))
    }
    
    func changeEightBallImage(){
        generateRandom()
        
        eightBallImage.image = UIImage(named: eightBallArray[eightBallRandom])
    }
    
    @IBAction func shakeButton(_ sender: UIButton) {
        changeEightBallImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeEightBallImage()
    }
    


}

