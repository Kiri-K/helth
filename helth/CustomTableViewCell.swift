//
//  CustomTableViewCell.swift
//  helth
//
//  Created by Kiri on 2016/12/18.
//  Copyright © 2016年 Kiri. All rights reserved.
//

import UIKit

class CustomTableViewCell : UITableViewCell{
    
    @IBOutlet weak var date: UILabel!
    
    @IBOutlet weak var preview: UILabel!
    
   

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    

}

