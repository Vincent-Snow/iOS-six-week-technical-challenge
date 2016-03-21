//
//  ItemViewController.swift
//  SixWeekChallenge
//
//  Created by mac-admin on 3/20/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class ItemViewController: UIViewController {
    
    static let sharedItemViewController = ItemViewController()
    
    @IBOutlet weak var itemTwoLabel: UILabel!
    @IBOutlet weak var itemOneLabel: UILabel!
   
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(animated: Bool) {
        self.itemOneLabel.reloadInputViews()
        self.itemTwoLabel.reloadInputViews()
    }
    
//    override func viewDidAppear(animated: Bool) {
//        EntityListTableViewController.sharedController.randomButtonTapped()
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
