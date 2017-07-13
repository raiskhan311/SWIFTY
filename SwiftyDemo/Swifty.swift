//
//  Swifty.swift
//  SwiftyDemo
//
//  Created by mac on 13/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Swifty{
    
    let batterID:String
    let batterType: String
    let toppingID:String
    let toppingType:String
    
    init? (data:Data){
        let json = JSON(data: data)
        let itemsDict = json.dictionary
        let itemArray = itemsDict?["items"]?["item"]
        
        let battersDict = itemArray?[0]["batters"]
        
        let topppingArray = itemArray?[0]["topping"]
        
        let batterDict = battersDict?.dictionary
        let batterArray = batterDict?["batter"]
        
        let batterId = batterArray?[3]["id"].string
        let battertype = batterArray?[3]["type"].string
        
        let toppingId = topppingArray?[3]["id"].string
        let toppingtype = topppingArray?[3]["type"].string
        
        self.batterID = batterId!
        self.batterType = battertype!
        
        self.toppingID = toppingId!
        self.toppingType = toppingtype!
        
        
//        print(json)
//        print(itemsDict)
//        print(itemArray)
//        print(battersDict)
//        print(batterDict)
//        print(batterArray)
//        print(topppingArray)
    }
    
}
