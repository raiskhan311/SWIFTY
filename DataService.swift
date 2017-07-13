//
//  DataService.swift
//  SwiftyDemo
//
//  Created by mac on 13/07/17.
//  Copyright © 2017 mac. All rights reserved.
//

import Foundation

class DataService {
    
    static let shared = DataService()
    private init() {}
    
    func getUsers(completion: (Data)-> Void) {
        guard let path = Bundle.main.path(forResource: "ComplexData", ofType: "json") else {return}
        let url = URL(fileURLWithPath: path)
        
        let data = try! Data(contentsOf: url)
        completion(data)
    }
    
}
