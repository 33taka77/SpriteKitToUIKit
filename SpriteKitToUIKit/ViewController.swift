//
//  ViewController.swift
//  SpriteKitToUIKit
//
//  Created by Aizawa Takashi on 2015/06/04.
//  Copyright (c) 2015年 Aizawa Takashi. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var mySKView: SKView!
    @IBAction func pushedTheButton(sender: AnyObject) {
        let myScene:MyScene = mySKView.scene as! MyScene
        if button.titleLabel?.text == "クラッシュ" {
            myScene.crashImages()
            button.setTitle("復元" , forState: UIControlState.Normal)
        }else{
            myScene.rebuildImages()
            button.setTitle("クラッシュ" , forState: UIControlState.Normal)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        mySKView.showsFPS = true
        mySKView.showsNodeCount = true
        mySKView.setTranslatesAutoresizingMaskIntoConstraints(true)
        mySKView.frame = CGRectMake(0, 50, self.view.frame.width, self.view.frame.height - 80)
        button.setTitle("クラッシュ" , forState: UIControlState.Normal)
    }

    override func viewWillAppear(animated: Bool) {
        let scene = MyScene(size:CGSizeMake(mySKView.frame.width, mySKView.frame.height))
        scene.scaleMode = .AspectFill
        mySKView.presentScene(scene)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

