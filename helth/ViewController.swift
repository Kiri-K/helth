//
//  ViewController.swift
//  helth
//
//  Created by Kiri on 2016/07/30.
//  Copyright © 2016年 Kiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//　　　セグメントコントロールで切り替えるViewの宣言
    @IBOutlet var Calender: UIView!
    @IBOutlet var Graph: UIView!
//    "tag"はカレンダー内の日付
    var tag: Int! = 0
    var tag1: Int! = 0
    var tag2: Int! = 1
    var tag3: Int! = 2
    var tag4: Int! = 3
    var tag5: Int! = 4
    var tag6: Int! = 5
    var tag7: Int! = 6
    var tag8: Int! = 7
    var tag9: Int! = 8
    var tag10: Int! = 9
    var tag11: Int! = 10
    var tag12: Int! = 11

    
//　　各月のUIButton
    @IBAction func Jan(sender: UIButton) {
        print(sender.tag)
        tag1 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)

            }
    
    @IBAction func Feb(sender: UIButton) {
        print(sender.tag)
        tag2 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func Mar(sender: UIButton) {
        print(sender.tag)
        tag3 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func Apr(sender: UIButton) {
        print(sender.tag)
        tag4 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func May(sender: UIButton) {
        print(sender.tag)
        tag5 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func Jun(sender: UIButton) {
        print(sender.tag)
        tag6 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func Jul(sender: UIButton) {
        print(sender.tag)
        tag7 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func Aug(sender: UIButton) {
        print(sender.tag)
        tag8 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    @IBAction func Sep(sender: UIButton) {
        print(sender.tag)
        tag9 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func Oct(sender: UIButton) {
        print(sender.tag)
        tag10 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    @IBAction func Nov(sender: AnyObject) {
        print(sender.tag)
        tag11 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
   
    @IBAction func Dec(sender: UIButton) {
        print(sender.tag)
        tag12 = sender.tag
        performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func testSegmentedControl(sender: UISegmentedControl) {
            
//    セグメント番号で分岐させる
            switch sender.selectedSegmentIndex {
                
            case 0: // "カレンダー"を押した時
                Calender.hidden = false
                Graph.hidden = true
                break
            case 1: // "グラフ"を押した時
                Graph.hidden = false
                Calender.hidden = true
                break
            default: // それ以外
                Calender.hidden = true
               Graph.hidden = true
                break
            }
       }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toCalender" {
            
          let calenderViewController = segue.destinationViewController as! CalenderViewController
            
            calenderViewController.tag = self.tag

            
            
        }
    }

}

