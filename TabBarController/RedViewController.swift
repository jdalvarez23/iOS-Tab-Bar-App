//
//  RedViewController.swift
//  TabBarController
//
//  Created by student19 on 3/5/19.
//  Copyright © 2019 Jose Alvarez. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    static var redHits = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("Red View Controller - viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Red View Controller - viewWillAppear")
        
        tabBarItem.badgeValue = String(YellowViewController.yellowHits)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Red View Controller - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Red View Controller - viewWillDisappear")
        
        RedViewController.redHits += 1
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Red View Controller - viewDidDisappear")
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func alertButtonPressed(_ sender: Any) {
        
        // create the action buttons for the alert
        let defaultAction = UIAlertAction(title: "Call", style: .default) { (action) in
            
            // Respond to user selection of action
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
            // Respond to user selection of action
            
        }
    
        
        
        // create and configure the alert controller
        let alertController = UIAlertController(title: "Campus Security", message: "Would you like to call security?", preferredStyle: .alert)
        
        // add action buttons to alert controller
        alertController.addAction(defaultAction)
            alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true) {
            // The alert was presented
        }
        
        
    }
    
}
