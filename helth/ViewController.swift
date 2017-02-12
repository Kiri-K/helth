//
//  ViewController.swift
//  helth
//
//  Created by Kiri on 2016/07/30.
//  Copyright © 2016年 Kiri. All rights reserved.
//

import UIKit



class ViewController:UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    
    let ud = UserDefaults.standard
    var contents :String = ""
    var month :String = String()
    var day :String = String()
    var arr :Array<String>= Array<String>()
    
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.taskTableViewOutlet.delegate = self
        self.taskTableViewOutlet.dataSource = self
        let nib:UINib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.taskTableViewOutlet.register(nib, forCellReuseIdentifier: "Cell")
        
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "MM"
        let now = Date()
        month = formatter.string(from: now)
        print(month)
        formatter.dateFormat = "dd"
        day = formatter.string(from: now)
        print(day)
        
        UserDefaults.standard.register(defaults: [String(month) + "/" + String(day):""])
        contents = ud.object(forKey: String(month) + "/" + String(day)) as! String
        arr = contents.components(separatedBy: "・")
        arr.remove(at: 0)
        
        print(arr)
        print(contents)
        
    }
    
    
    @IBAction func
        FebruaryButton(_ sender: UIButton) {
        print(sender.tag)
        tag = 2
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    @IBAction func
        JanuaryButton(_ sender: UIButton) {
        print(sender.tag)
        tag = 1
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    @IBAction func MarchButton(_ sender: UIButton) {
        print(sender.tag)
        tag = 3
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    
    @IBAction func AprilButton(_ sender: UIButton) {
        print(sender.tag)
        tag = 4
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    @IBAction func MayButton(_ sender: UIButton){
        print(sender.tag)
        tag = 5
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    @IBAction func JunButton(_ sender: UIButton){
        print(sender.tag)
        tag = 6
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    @IBAction func JulyButton(_ sender: UIButton){
        print(sender.tag)
        tag = 7
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    @IBAction func AugustButton(_ sender: UIButton){
        print(sender.tag)
        tag = 8
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    @IBAction func SeptemberButton(_ sender: UIButton){
        print(sender.tag)
        tag = 9
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    @IBAction func OctoberButton(_ sender: UIButton) {
        print(sender.tag)
        tag = 10
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    @IBAction func NovemberButton(_ sender: UIButton) {
        print(sender.tag)
        tag = 11
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    @IBAction func DecemberButton(_ sender: UIButton) {
        print(sender.tag)
        tag = 12
        performSegue(withIdentifier: "toCalender", sender: nil)
    }
    
    
    
    @IBAction func testSegmentedControl(_ sender: UISegmentedControl) {
        
        
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
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CustomTableViewCell = (tableView.dequeueReusableCell(withIdentifier: "Cell") as? CustomTableViewCell
            )!
        
        
        
        let key : String = month + "/" + day
        cell.date.text = key
        cell.preview.text = arr[indexPath.row]
        return cell
        
    }
    
    func  numberOfSections(in tableView: UITableView) -> Int {
        return 7;
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0{
            return month + "/" + day
            
        }else {
            
            var dayNum = Int(self.day)! + 1
            return month + "/" + String(dayNum)
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
        
    }
    
    func  tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toCalender" {
            
            let calenderViewController = segue.destination as! CalenderViewController
            calenderViewController.tag = self.tag
            
        }
    }
    
    
    @IBAction func moveToMome(_ sender: UIButton) {
        performSegue(withIdentifier: "MemoView", sender: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

