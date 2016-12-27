//
//  JSONExtensions.swift
//
//  Created by Matthew Cawley on 14/12/2016.
//  Copyright © 2016 Matthew Cawley. All rights reserved.
//

import Foundation

extension Collection {

    func JSONRepresentation() -> String {
        
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)
            return String.init(data: jsonData, encoding: .utf8) ?? ""
        } catch {
            print(error.localizedDescription)
        }
        return ""
    }
    
}

extension String {
    
    func toJSONArray() -> Array<AnyObject>? {
        let jsonData = self.data(using: .utf8)
        do {
            return try JSONSerialization.jsonObject(with: jsonData!, options: []) as? Array<AnyObject>
        } catch let error as NSError {
            print("toJSONArray Error: \(error.localizedDescription)")
        }
        return []
    }
    
    func toJSONDictionary() -> Dictionary<String, AnyObject>? {
        let jsonData = self.data(using: .utf8)
        do {
            return try JSONSerialization.jsonObject(with: jsonData!, options: []) as? Dictionary<String, AnyObject>
        } catch let error as NSError {
            print("toJSONDictionary Error: \(error.localizedDescription)")
        }
        return [:]
    }
    
    func toJSONDictionaryArray() -> Array<Dictionary<String, AnyObject>>? {
        let jsonData = self.data(using: .utf8)
        do {
            return try JSONSerialization.jsonObject(with: jsonData!, options: []) as? Array<Dictionary<String, AnyObject>>
        } catch let error as NSError {
            print("toJSONDictionaryArray Error: \(error.localizedDescription)")
        }
        return []
    }
}
