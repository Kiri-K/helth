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
    
    @IBOutlet weak var addTextField: UITextView!
    var month :String = "0"
    var day :String = "0"
    let ud = UserDefaults.standard
    var text = ""
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        
        UserDefaults.standard.register(defaults: [String(month) + "/" + String(day):""])
        text = ud.object(forKey: month + "/" + day) as! String
        hiduke.text = month + "/" + day
        print("保存時：" + month + "/" + day)
        addTextField.text = text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func dismiss(_ sender: UIButton) {
         self.dismiss(animated: true, completion: {})
    }
    
    @IBAction func add(_ sender: UIButton) {
        ud.set(addTextField.text, forKey: String(month) + "/" + String(day))
        print( String(month) + "/" + String(day))
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if(addTextField.isFirstResponder){
            addTextField.resignFirstResponder()
        }
    }
}



