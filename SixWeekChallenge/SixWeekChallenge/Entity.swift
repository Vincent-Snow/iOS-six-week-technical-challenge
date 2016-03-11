//
//  Entity.swift
//  SixWeekChallenge
//
//  Created by mac-admin on 3/11/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class Entity: Equatable {
    
    private let nameKey = "name"
    
    let name: String
//    var itemOne: Entity?
//    var itemTwo: Entity?
    
    init(name: String) {
        self.name = name
    }
    
    init?(dictionary: [String: AnyObject]) {
        guard let name = dictionary[nameKey] as? String else {
            self.name = ""
            return nil
        }
        self.name = name
    }
    
    func dictionaryCopy() -> [String: AnyObject] {

        let dictionary = [
            nameKey: self.name
        ]
        
        return dictionary
    }
}

func == (lhs: Entity, rhs: Entity) -> Bool {
    return ObjectIdentifier(lhs) == ObjectIdentifier(rhs)
}