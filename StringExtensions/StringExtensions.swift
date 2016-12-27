//
//  StringJSONExtension.swift
//
//  Created by Matthew Cawley on 14/12/2016.
//  Copyright © 2016 Matthew Cawley. All rights reserved.
//

import Foundation

extension String {
    
    func base64Decoded() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    func base64Encoded() -> String {
        return Data(self.utf8).base64EncodedString()
    }
    
}
