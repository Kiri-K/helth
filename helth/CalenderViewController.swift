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
        return 35
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("item", forIndexPath: indexPath)
        return cell
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
