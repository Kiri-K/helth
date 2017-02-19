//
//  MemoViewController.swift
//  helth
//
//  Created by Kiri on 2016/09/11.
//  Copyright © 2016年 Kiri. All rights reserved.
//
import UIKit

class MemoViewController:  UIViewController {
    
    
    @IBOutlet weak var backButtonIBOutlet: UIButton!
    
    override func viewDidLayoutSubviews() {
        
        backButtonIBOutlet.frame = CGRect(x: view.frame.size.width/2 - ((view.frame.size.height-65)*0.12)/2 ,y: backButtonIBOutlet.frame.origin.y,width: (view.frame.size.height-65)*0.12,height: (view.frame.size.height-65)*0.12)
        
        backButtonIBOutlet.layer.masksToBounds = true;
        backButtonIBOutlet.layer.cornerRadius = backButtonIBOutlet.layer.frame.size.height  / 2
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func backViewController(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: {})
        
    }
    
    
    
    
}

