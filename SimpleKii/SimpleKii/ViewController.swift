//
//  ViewController.swift
//  SimpleKii
//
//  Created by 太田麻莉子 on 2017/06/16.
//  Copyright © 2017年 太田麻莉子. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    //スクロールビューに表示するUIImageの配列
    let images :[UIImage] = [#imageLiteral(resourceName: "marichan"), #imageLiteral(resourceName: "okachan"), #imageLiteral(resourceName: "oochan"), #imageLiteral(resourceName: "takachan")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //TODO:Level1スクロールビューの中身のサイズを決める
        
        
        var xPosition = 0
        
        for image in images{
            //スクロールビューに入れるためのUIImageView
            let imageViewInScroll = UIImageView()
            imageViewInScroll.image = image
            
            //TODO:Level1スクロールビュー内に配置する画像の座標を決める（WidthとHeightは200とする）
            
            
            //画像にアクションをつけれるようにする
            imageViewInScroll.isUserInteractionEnabled = true
            
            //TODO:Level2スクロールビュー内の画像にタップジェスチャーを追加する。
            
            
            
            
            //TODO:Level1スクロールビューに画像を追加
            
            
        }
        
        
    }
    
    //スクロールビュー内の画像がタップされた時に呼ばれる処理
    func tapImage(sender: UITapGestureRecognizer) {
        if let imageView = sender.view as? UIImageView {
            self.imageView.image = imageView.image
            //UIViewContentMode.scaleAspectFitで画像の縦横比を維持できる
            self.imageView.contentMode = UIViewContentMode.scaleAspectFit
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

