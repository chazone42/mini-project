//
//  ViewController.swift
//  วัดดวง
//
//  Created by SU_24 on 11/9/18.
//  Copyright © 2018 ICTSUIM. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {

    var audioPlayer : AVAudioPlayer!
    
    @IBOutlet var bgImage: UIImageView!
    @IBOutlet var showResult1: UILabel!
    @IBOutlet var showResult2: UILabel!
    @IBOutlet var showNumber: UILabel!
    @IBOutlet var showNumber2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickBt(_ sender: UIButton) {
        
        random()
//        if word == ["ดีที่สุด"] {
//            bgImage.image = UIImage(named: "greenbg")
//        }
    }
    
    func random(){
        var word = [ "ดีที่สุด" ,"ดี" ,"ปานกลาง" ,"พอใช้" ,"แย่มาก" ]
        let randomWord = Int(arc4random_uniform(UInt32(word.count)))
        showResult1.text = word[randomWord]
        
        let randomNum = arc4random_uniform(99)
        showNumber.text = String(randomNum)
        
        let randomNum2 = arc4random_uniform(999)
        showNumber2.text = String(randomNum2)
    }
    
    
    
    override func motionBegan(_ motion: UIEventSubtype, with event: UIEvent?) {
        random()
    }
   
}

