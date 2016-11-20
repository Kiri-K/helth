//
//  CustomTableView.swift
//  helth
//
//  Created by Kiri on 2016/11/20.
//  Copyright © 2016年 Kiri. All rights reserved.
//

import UIKit

class CustomTableView: UITableViewCell, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var checkButton: UIButton!
    
    @IBOutlet weak var memoFiled: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.read()
    }
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
