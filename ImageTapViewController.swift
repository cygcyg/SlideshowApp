//
//  ImageTapViewController.swift
//  SlideshowApp
//
//  Created by 大川哲史 on 2018/07/07.
//  Copyright © 2018年 cygcyg. All rights reserved.
//

import UIKit

class ImageTapViewController: UIViewController {

    @IBOutlet weak var UIview :UIImageView!
    var receiveImage = UIImage()
    var transScale = CGAffineTransform(scaleX: 1.05, y: 1.05)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIview.image = receiveImage
        UIview.contentMode = UIViewContentMode.center
        UIview.transform = transScale

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
