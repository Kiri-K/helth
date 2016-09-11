//
//  CustomCell.swift
//  helth
//
//  Created by Kiri on 2016/09/11.
//  Copyright © 2016年 Kiri. All rights reserved.
//
import UIKit

class MemoViewController: UICollectionViewCell{
   
    @IBOutlet var addMemo: UITextView!
    
    @IBAction func BackToViewController(sender: UIButton) {
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        if(addMemo.isFirstResponder()){
            addMemo.resignFirstResponder()
        }
    }

    
}

