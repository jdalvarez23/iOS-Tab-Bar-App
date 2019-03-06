//
//  YellowViewController.swift
//  TabBarController
//
//  Created by student19 on 3/5/19.
//  Copyright © 2019 Jose Alvarez. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    
    static var yellowHits = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Yellow View Controller - viewWillAppear")
        
        tabBarItem.badgeValue = String(RedViewController.redHits)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Yellow View Controller - viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Yellow View Controller - viewWillDisappear")
        
        YellowViewController.yellowHits += 1

        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Yellow View Controller - viewDidDisappear")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
