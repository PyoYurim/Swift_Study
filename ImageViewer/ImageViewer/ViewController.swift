//
//  ViewController.swift
//  ImageViewer
//
//  Created by 표유림 on 2023/02/23.
//

import UIKit

class ViewController: UIViewController {
    var numImage = 1
    var maxImage = 6
    

    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imgView.image = UIImage(named: "1.png")
    }

    @IBAction func btnBeforeImage(_ sender: UIButton) {
        numImage = numImage - 1
        if (numImage < 1) {
            numImage = maxImage
        }
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
    
    @IBAction func btnAfterImage(_ sender: UIButton) {
        numImage = numImage + 1
        if (numImage > maxImage) {
            numImage = 1
        }
        let imageName = String(numImage) + ".png"
        imgView.image = UIImage(named: imageName)
    }
}


