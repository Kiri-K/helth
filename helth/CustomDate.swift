//
//  CustomDate.swift
//  helth
//
//  Created by Kiri on 2017/02/12.
//  Copyright © 2017年 Kiri. All rights reserved.
//

import Foundation

class CustomDate {
    var day : Int = 0
    var month : Int = 0
    
    
    init (month : Int ,day : Int) {
        self.month = month
        self.day = day
    }
    
    func nextDay(date : CustomDate) -> CustomDate {
        
        let nextDate : CustomDate = CustomDate(month: 0,day: 0)
        
        
        
        if date.month == 1 || date.month == 3 || date.month == 5 || date.month == 7 || date.month == 8 || date.month == 10 || date.month == 12 {
            
            if date.day != 31{
                nextDate.month = date.month
                nextDate.day = date.day + 1
                
            }else{
                if date.month != 12{
                    nextDate.month = date.month + 1
                }else{
                    nextDate.month = 1
                }
                nextDate.day = 1
            }
            
            
        }else if  date.month == 4 || date.month == 6 || date.month == 9 || date.month == 11{
            
            if date.day != 30 {
                nextDate.month = date.month
                nextDate.day = date.day + 1
            }else{
                nextDate.month = date.month + 1
                nextDate.day = 1
            }
            
            
        }else {
            if date.day != 28{
                nextDate.month = date.month
                nextDate.day = date.day + 1
            }else{
                nextDate.month  = date.month + 1
                nextDate.day = 1
            }
            
        }
        
        return(nextDate)
        
        
    }
    
    
    
}
