//
//  EntityEntryViewController.swift
//  SixWeekChallenge
//
//  Created by mac-admin on 3/11/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class EntityEntryViewController: UIViewController {

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
