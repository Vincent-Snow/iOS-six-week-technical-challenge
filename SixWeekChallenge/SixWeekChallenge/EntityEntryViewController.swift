//
//  EntityEntryViewController.swift
//  SixWeekChallenge
//
//  Created by mac-admin on 3/11/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class EntityEntryViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var entityTextField: UITextField!
    
    var entity: Entity?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    
    @IBAction func addEntityButtonTapped(sender: AnyObject) {
      
        let entity = Entity(name: self.entityTextField.text!)
       
        EntityController.sharedInstance.addEntity(entity)
       
        self.entity = entity
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "toEntityList" {
            if let entityListTableViewController = segue.destinationViewController as? EntityListTableViewController {
                _ = entityListTableViewController.view
                
                let indexPath = EntityListTableViewController.sharedController.tableView.indexPathForSelectedRow
                
                if let selectedRow = indexPath?.row {
                    let entity = EntityController.sharedInstance.entities[selectedRow]
                   self.updateWithEntity(entity)
                }
            }
        }
    }
    
    func updateWithEntity(entity: Entity) {
        self.entity = entity
        
        self.entityTextField.text = entity.name
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
}
