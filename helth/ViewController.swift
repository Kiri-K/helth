//
//  ViewController.swift
//  helth
//
//  Created by Kiri on 2016/07/30.
//  Copyright © 2016年 Kiri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //セグメントコントロールの切り替えに使うボタンの宣言
    @IBOutlet weak var januaryButtonOutlet: UIButton!
    
    @IBOutlet weak var februaryButtonOutlet: UIButton!
    
    @IBOutlet weak var marchButtonOutlet: UIButton!
    
    @IBOutlet weak var aprilButtonOutlet: UIButton!
    
    @IBOutlet weak var mayButtonOutlet: UIButton!
    
    @IBOutlet weak var junButtonOutlet: UIButton!
    
    @IBOutlet weak var julyButtonOutlet: UIButton!
    
    @IBOutlet weak var augustButtonOutlet: UIButton!
    
    @IBOutlet weak var septemberButtonOutlet: UIButton!
    
    @IBOutlet weak var octoberButtonOutlet: UIButton!
    
    @IBOutlet weak var novemberButtonOutlet: UIButton!
    
    @IBOutlet weak var decemberButtonOutlet: UIButton!
    
//　　　セグメントコントロールで切り替えるViewの宣言
    
    @IBOutlet weak var taskTableViewOutlet: UITableView!
   
    
    
//    "tag"はカレンダー内の日付
    var tag: Int! = 0
  
    @IBAction func
        FebruaryButton(sender: UIButton) {
        print(sender.tag)
        tag = 2
    performSegueWithIdentifier("toCalender", sender: nil)
        }
    
    @IBAction func
        JanuaryButton(sender: UIButton) {
        print(sender.tag)
        tag = 1
    performSegueWithIdentifier("toCalender", sender: nil)
        }
    
    @IBAction func MarchButton(sender: UIButton) {
        print(sender.tag)
        tag = 3
    performSegueWithIdentifier("toCalender", sender: nil)
        }
    
    
    @IBAction func AprilButton(sender: UIButton) {
        print(sender.tag)
        tag = 4
    performSegueWithIdentifier("toCalender", sender: nil)
        }
    
    @IBAction func MayButton(sender: UIButton){
        print(sender.tag)
        tag = 5
    performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func JunButton(sender: UIButton){
        print(sender.tag)
        tag = 6
    performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func JulyButton(sender: UIButton){
        print(sender.tag)
        tag = 7
    performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func AugustButton(sender: UIButton){
        print(sender.tag)
        tag = 8
    performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func SeptemberButton(sender: UIButton){
        print(sender.tag)
        tag = 9
    performSegueWithIdentifier("toCalender", sender: nil)
    }
    @IBAction func OctoberButton(sender: UIButton) {
        print(sender.tag)
        tag = 10
    performSegueWithIdentifier("toCalender", sender: nil)
    }
    @IBAction func NovemberButton(sender: UIButton) {
        print(sender.tag)
        tag = 11
    performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    @IBAction func DecemberButton(sender: UIButton) {
        print(sender.tag)
        tag = 12
    performSegueWithIdentifier("toCalender", sender: nil)
    }
    
    
    
    @IBAction func testSegmentedControl(sender: UISegmentedControl) {
    
            
//    セグメント番号で分岐させる
            switch sender.selectedSegmentIndex {

            case 0:
                taskTableViewOutlet.alpha = 0
                januaryButtonOutlet.alpha = 1
                februaryButtonOutlet.alpha = 1
                marchButtonOutlet.alpha = 1
                aprilButtonOutlet.alpha = 1
                mayButtonOutlet.alpha = 1
                junButtonOutlet.alpha = 1
                julyButtonOutlet.alpha = 1
                augustButtonOutlet.alpha = 1
                septemberButtonOutlet.alpha = 1
                octoberButtonOutlet.alpha = 1
                novemberButtonOutlet.alpha = 1
                decemberButtonOutlet.alpha = 1
                // "カレンダー"を押した時
                break
                
            case 1:
                taskTableViewOutlet.alpha = 1
                januaryButtonOutlet.alpha = 0
                februaryButtonOutlet.alpha = 0
                marchButtonOutlet.alpha = 0
                aprilButtonOutlet.alpha = 0
                mayButtonOutlet.alpha = 0
                junButtonOutlet.alpha = 0
                julyButtonOutlet.alpha = 0
                augustButtonOutlet.alpha = 0
                septemberButtonOutlet.alpha = 0
                octoberButtonOutlet.alpha = 0
                novemberButtonOutlet.alpha = 0
                decemberButtonOutlet.alpha = 0
                // "グラフ"を押した時
                break
                
            default:
                taskTableViewOutlet.alpha = 0
                januaryButtonOutlet.alpha = 1
                februaryButtonOutlet.alpha = 1
                marchButtonOutlet.alpha = 1
                aprilButtonOutlet.alpha = 1
                mayButtonOutlet.alpha = 1
                junButtonOutlet.alpha = 1
                julyButtonOutlet.alpha = 1
                augustButtonOutlet.alpha = 1
                septemberButtonOutlet.alpha = 1
                octoberButtonOutlet.alpha = 1
                novemberButtonOutlet.alpha = 1
                decemberButtonOutlet.alpha = 1
                // それ以外
                break
        }
       }
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toCalender" {
            
            let calenderViewController = segue.destinationViewController as! CalenderViewController
            calenderViewController.tag = self.tag
            
        }
    }
    
       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    @IBAction func moveToMome(sender: UIButton) {
        performSegueWithIdentifier("MemoView", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

