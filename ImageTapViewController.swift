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
    
//    var scale:CGFloat = 2.0//画像拡大用
//    var width:CGFloat = 0
//    var height:CGFloat = 0
//    var screenWidth:CGFloat = 0
//    var screenHeight:CGFloat = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIview.image = receiveImage
        UIview.contentMode = UIViewContentMode.center
        UIview.transform = transScale
        

//        screenWidth = self.view.bounds.width  // Screen Size の取得
//        screenHeight = self.view.bounds.height
//
//        width = (UIview.image?.size.width)!    // 画像の幅・高さの取得
//        height = (UIview.image?.size.height)!
//
//        let rect:CGRect = CGRect(x:0, y:0, width:width*scale, height:height*scale)
//        UIview.frame = rect;
//        UIview.center = CGPoint(x:screenWidth/2, y:screenHeight/2)
//        self.view.addSubview(UIview)

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
