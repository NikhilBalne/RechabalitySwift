//
//  ViewController.swift
//  RechabalitySwift
//
//  Created by Nikhil Balne on 08/07/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let network: NetworkManager = NetworkManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        network.reachability.whenUnreachable = { reachability in
            let offlineVC = self.storyboard?.instantiateViewController(identifier: "OfflineViewController")
            self.navigationController?.pushViewController(offlineVC!, animated: true)
        }
        
    }


}

