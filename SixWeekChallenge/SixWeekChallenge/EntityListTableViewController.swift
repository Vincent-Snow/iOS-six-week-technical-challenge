//
//  EntityListTableViewController.swift
//  SixWeekChallenge
//
//  Created by mac-admin on 3/11/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class EntityListTableViewController: UITableViewController {

    @IBAction func randomButtonTapped(sender: AnyObject) {
        ItemViewController.sharedItemViewController.itemOneLabel.text = EntityController.sharedInstance.randomPair().0.name
        ItemViewController.sharedItemViewController.itemTwoLabel.text = EntityController.sharedInstance.randomPair().1.name

    //        let randomEntityIndex = EntityController.sharedInstance.generateRandom()
    //        let entity = EntityController.sharedInstance.entities[randomEntityIndex]

        
    }
    static let sharedController = EntityListTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        EntityController.sharedInstance.loadFromPersistentStorage()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewWillAppear(animated)
        EntityController.sharedInstance.loadFromPersistentStorage()
        tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return EntityController.sharedInstance.entities.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("entityCell", forIndexPath: indexPath)
        
        let entity = EntityController.sharedInstance.entities[indexPath.row]
        
        cell.textLabel?.text = entity.name
        

        return cell
    }
    

    
//    // Override to support conditional editing of the table view.
//    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//        // Return false if you do not want the specified item to be editable.
//        return true
//    }
//    

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "randomizerSegue" {
            let itemViewController = segue.destinationViewController as! ItemViewController
            
            
        }
    }
    

}
