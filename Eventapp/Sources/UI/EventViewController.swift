//
//  ViewController.swift
//  Eventapp
//
//  Created by Laurence Archer on 11/02/2019.
//  Copyright © 2019 Laurence Archer. All rights reserved.
//

import UIKit

class EventViewController: UITableViewController {

    @IBOutlet weak var homeButton: UIBarButtonItem!
    
    @IBAction func homeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

