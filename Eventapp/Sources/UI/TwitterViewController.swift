//
//  TwitterViewController.swift
//  Eventapp
//
//  Created by Laurence Archer on 12/02/2019.
//  Copyright © 2019 Laurence Archer. All rights reserved.
//

import UIKit
import TwitterKit

class TwitterViewController: TWTRTimelineViewController {    
    @IBAction func homeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let hashtag : String = "#bbcqt"
        let client = TWTRAPIClient()
        self.dataSource = TWTRSearchTimelineDataSource(searchQuery: hashtag, apiClient: client)
        self.title = hashtag+" Tweets"
    }
    
}


