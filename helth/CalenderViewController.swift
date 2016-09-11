//
//  CalenderViewController.swift
//  helth
//
//  Created by Kiri on 2016/07/31.
//  Copyright © 2016年 Kiri. All rights reserved.
//

import UIKit


class CalenderViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var collectionView: UICollectionView!
//    "tag"はカレンダー内の日
    var tag: Int!
    var number: Int! = 0
    @IBOutlet var label: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        label.text = String(tag)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    //    UICollectionViewDataSource
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if tag == 4 || tag == 6 || tag == 9 || tag == 11{
            return 30
        }else if tag == 2{
            return 28
        }else{
            return 31
        }
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        number = number + 1
        let cell : CustomCell = collectionView.dequeueReusableCellWithReuseIdentifier("item", forIndexPath: indexPath) as! CustomCell
        cell.date.text = String(number)
        cell.date.userInteractionEnabled = true
        cell.date.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "tap:"))
        
        
        
        return cell
    }
    
    func tap(sender: UITapGestureRecognizer)  {
        performSegueWithIdentifier("toDetail", sender: nil)
        //print("aaa")
        
    }
    
//    UICollectionViewDelegate
//    func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
//        
//    }
//    func collectionView(collectionView: UICollectionView, shouldDeselectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
//        
//    }
    
//    UICollectionViewDataSource
    
    
//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int{}
//    
//    func collectionView(collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, atIndexPath indexPath: NSIndexPath) -> UICollectionReusableView{}
//    
//    func collectionView(collectionView: UICollectionView, canMoveItemAtIndexPath indexPath: NSIndexPath) -> Bool{}
//    
//    func collectionView(collectionView: UICollectionView, moveItemAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath){}

    

    
}
