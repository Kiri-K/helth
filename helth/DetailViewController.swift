//
//  DetailViewController.swift
//  helth
//
//  Created by Kiri on 2016/09/11.
//  Copyright © 2016年 Kiri. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var hiduke: UILabel!
    @IBOutlet weak var task: UILabel!
    @IBOutlet weak var addTextField: UITextView!
    var month = 0
    var day = 0
    let ud = NSUserDefaults.standardUserDefaults()
    var text = ""
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        print(month)
        print(day)
        NSUserDefaults.standardUserDefaults().registerDefaults([String(month) + "/" + String(day):""])
        text = ud.objectForKey(String(month) + "/" + String(day)) as! String
        task.text = text
        addTextField.text = text
        hiduke.text = String(month) + "/" + String(day)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(sender: UIButton) {
         self.dismissViewControllerAnimated(true, completion: {})
    }
    
    @IBAction func add(sender: UIButton) {
        ud.setObject(addTextField.text, forKey: String(month) + "/" + String(day))
        task.text = addTextField.text
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if(addTextField.isFirstResponder()){
            addTextField.resignFirstResponder()
        }
    }
}



