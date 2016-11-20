//
//  CalenderViewController.swift
//  helth
//
//  Created by Kiri on 2016/07/31.
//  Copyright © 2016年 Kiri. All rights reserved.
//

import UIKit


class CalenderViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBAction func backToViewController(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})

    }
    
   
    @IBOutlet weak var collectionView: UICollectionView!
//    "tag"はカレンダー内の日
    var tag: Int!
    var number: Int! = 0
    var day = 0;
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
        cell.date.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(CalenderViewController.tap(_:))))
        
        
        
        return cell
    }
    
    func tap(sender: UITapGestureRecognizer)  {
        let label = sender.view as! UILabel
        day = Int(label.text!)!
        
        performSegueWithIdentifier("toDetail", sender: nil)
        
        //print("aaa")
    
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toDetail"{
            let detailViewControlloer = segue.destinationViewController as! DetailViewController
            detailViewControlloer.month = self.tag
            detailViewControlloer.day = self.day
            
        }
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
