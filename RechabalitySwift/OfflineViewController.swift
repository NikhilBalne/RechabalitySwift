//
//  OfflineViewController.swift
//  RechabalitySwift
//
//  Created by Nikhil Balne on 08/07/20.
//  Copyright © 2020 Nikhil Balne. All rights reserved.
//

import UIKit

class OfflineViewController: UIViewController {

    let network = NetworkManager.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showMainViewController()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    
    private func showMainViewController() -> Void {
        network.reachability.whenReachable = { reachability in
            DispatchQueue.main.async {
                self.navigationController?.popViewController(animated: true)
            }
        }
    }
    
}
