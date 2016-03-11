//
//  EntityController.swift
//  SixWeekChallenge
//
//  Created by mac-admin on 3/11/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import Foundation

class EntityController {

    private let entitiesKey = "entities"
    
    static let sharedInstance = EntityController()
    
    var entities: [Entity]
    
    init() {
        self.entities = []
        
        self.loadFromPersistentStorage()
    }
    
    func addEntity(entity: Entity) {
        
        entities.append(entity)
        
        self.saveToPersistentStorage()
    }
    
//    func removeEntity(entity: Entity) {
//        
//        if let entityIndex = entities.indexOf(entity) {
//
//            entities.removeAtIndex(entityIndex)
//        
//        }
//        
//    }

    func editEntity(entity: Entity) {
        
    }
    
    func randomPair(itemOne: Entity, itemTwo: Entity) {
    
    }
    
    func loadFromPersistentStorage() {
        
        let entitiesDictionariesFromDefaults = NSUserDefaults.standardUserDefaults().objectForKey(entitiesKey) as? [String: AnyObject]
        
        if let entitiesDictionary = entitiesDictionariesFromDefaults {
            
        self.entities = entitiesDictionary.map({Entity(dictionary: $0 )!})
            
        }
    
        
    }
    
    func saveToPersistentStorage() {
        
        let entitiesDictionary = self.entities.map({$0.dictionaryCopy()})
        
        NSUserDefaults.standardUserDefaults().setObject(entitiesDictionary, forKey: entitiesKey)
    }

}
