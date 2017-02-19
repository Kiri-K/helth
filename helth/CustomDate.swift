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
    
    func nextDay() -> CustomDate {
        
        let nextDate : CustomDate = CustomDate(month: 0,day: 0)
        
        
        
        if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12 {
            
            if day != 31{
                nextDate.month = month
                nextDate.day = day + 1
                
            }else{
                if month != 12{
                    nextDate.month = month + 1
                }else{
                    nextDate.month = 1
                }
                nextDate.day = 1
            }
            
            
        }else if  month == 4 || month == 6 || month == 9 || month == 11{
            
            if day != 30 {
                nextDate.month = month
                nextDate.day = day + 1
            }else{
                nextDate.month = month + 1
                nextDate.day = 1
            }
            
            
        }else {
            if day != 28{
                nextDate.month = month
                nextDate.day = day + 1
            }else{
                nextDate.month  = month + 1
                nextDate.day = 1
            }
            
        }
        
        return(nextDate)
        
        
    }
    
    func getMonth() -> String {
        
        if month < 10 {
            return "0" + String(month)
        }else{
        
        return String(month)
        }
    }
    
    func getDay() -> String {
        if day < 10 {
            return "0" + String(day)
        }else{
            
            return String(day)
        }
    }
    
    
    
    
    
}
