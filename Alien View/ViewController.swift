//
//  ViewController.swift
//  Alien View
//
//  Created by D7702_09 on 2018. 4. 3..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var counter = 1
    var chk = true
    @IBOutlet weak var UIImageView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //1st 이미지가 출력
        UIImageView.image = UIImage(named : "frame1.png")
        lbl.text = "1"
    }

    @IBAction func Updateimage(_ sender: Any) {
        if counter == 5  {
            chk = false //내리막길
        }else if counter == 1   {
            chk = true  //오르막길
        }
        
        
        if chk == false {
            counter = counter - 1
        }else if chk == true{
            counter = counter + 1
        }
        UIImageView.image = UIImage(named: "frame\(counter).png")
        lbl.text = String(counter)
    }
    
}

