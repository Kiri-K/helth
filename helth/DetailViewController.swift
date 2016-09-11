//
//  DetailViewController.swift
//  helth
//
//  Created by Kiri on 2016/09/11.
//  Copyright © 2016年 Kiri. All rights reserved.
//


import UIKit

class DetailViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dismiss(sender: AnyObject) {
        
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
}

