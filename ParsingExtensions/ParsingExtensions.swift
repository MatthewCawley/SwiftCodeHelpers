//
//  Parsing.swift
//
//  Created by Matthew Cawley on 27/12/2016.
//  Copyright © 2016 Matthew Cawley. All rights reserved.
//

import Foundation

extension Dictionary {
    
    func safeParseInt(_ dictionaryKey : Key) -> Int {
        
        let value = self[dictionaryKey]
        
        if(value != nil && value is Int)
        {
            return value as! Int
        }
        
        return Int(value as! String) ?? 0
    }
}
