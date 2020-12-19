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
                
        showOfflinePage()
        
    }

    private func showOfflinePage() -> Void {
        
        network.reachability.whenUnreachable = { reachability in
            DispatchQueue.main.async {
                let offlineVC = self.storyboard?.instantiateViewController(identifier: "OfflineViewController")
                self.navigationController?.pushViewController(offlineVC!, animated: true)
            }
        }
    }

}

