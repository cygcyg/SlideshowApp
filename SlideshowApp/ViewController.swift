//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 大川哲史 on 2018/07/03.
//  Copyright © 2018年 cygcyg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var GoButton: UIButton!
    @IBOutlet weak var BackButton: UIButton!
    @IBOutlet weak var UIview: UIImageView!
    @IBOutlet weak var Playtype: UIButton!
    
    
    var img1 = UIImage(named:"kinniku")!
    var img2 = UIImage(named:"job_programmer")!
    var img3 = UIImage(named:"text_shimekiri_mamoru")!
    var playmode = true
    var timer: Timer!
    
    var imageNo = 0;
    var imageArray : Array<UIImage> = []
    
    @IBAction func NextButton(_ sender: Any) {
        imageNo += 1
        imageUpdate()
    }
    
    @IBAction func BackButton(_ sender: Any) {
        imageNo -= 1
        imageUpdate()
    }
    
    
    @IBAction func SlideShowButton(_ sender: Any) {// 再生/停止ボタン
        if(playmode == true){// 再生ボタンの処理
            GoButton.isEnabled = false
            BackButton.isEnabled = false
            Playtype.setTitle("停止", for: .normal)
            if self.timer == nil {
                self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true) //2秒間隔で呼び出し
            }
            playmode = false
        }
        
        else{// 停止ボタンの処理
            if self.timer != nil {
                self.timer.invalidate()   // 現在のタイマーを破棄する
                self.timer = nil          // startTimer() の timer == nil で判断するために、 timer = nil としておく
            }
            Playtype.setTitle("再生", for: .normal)
            playmode = true
            GoButton.isEnabled = true
            BackButton.isEnabled = true
        }
    }
    
    @objc func updateTimer(_ timer: Timer) { //スライドショー時間管理
        imageNo += 1
        imageUpdate()
    }
    func imageUpdate(){ //画像変更
        if(imageNo > 2){
            imageNo = 0
        }
        else if(imageNo < 0){
                imageNo = 2
        }
        UIview.image = imageArray[imageNo]
    }
    

    @IBAction func onTapImage(_ sender: Any) {//画像タップ
        if(self.timer != nil){//再生ボタン動作中にタップした場合の処理
            self.timer.invalidate()//再生を停止させてから遷移させる
            self.timer = nil
            Playtype.setTitle("再生", for: .normal)
            playmode = true
            GoButton.isEnabled = true
            BackButton.isEnabled = true
        }
        
        self.performSegue(withIdentifier: "zoom", sender: nil)
    }
    
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIview.isUserInteractionEnabled = true
        
        imageArray.append(img1)
        imageArray.append(img2)
        imageArray.append(img3)
        UIview.image = imageArray[imageNo]
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let ImageTapViewController = segue.destination as! ImageTapViewController
        ImageTapViewController.receiveImage = imageArray[imageNo]
    }


}

