//
//  CustomCell.swift
//  helth
//
//  Created by Kiri on 2016/09/11.
//  Copyright © 2016年 Kiri. All rights reserved.
//
import UIKit

class CustomCell: UICollectionViewCell{
    @IBOutlet var date: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }

}

