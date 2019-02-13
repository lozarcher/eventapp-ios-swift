//
//  ViewController.swift
//  Eventapp
//
//  Created by Laurence Archer on 11/02/2019.
//  Copyright © 2019 Laurence Archer. All rights reserved.
//

import UIKit
import Alamofire

class EventViewController: UITableViewController {
    
    @IBOutlet weak var homeButton: UIBarButtonItem!
    
    @IBAction func homeButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var events = [Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.fetchData()
    }

    func fetchData() {
        var eventResponse = EventResponse()
        
        Alamofire.request("https://eventapp.lozarcher.co.uk/events").responseJSON { response in
            do {
                let decoder = JSONDecoder()
                eventResponse = try decoder.decode(EventResponse.self, from: response.data!)
                self.events = eventResponse.data
                self.tableView.reloadData()
            }
            catch let jsonErr {
                print("Failed to parse json:", jsonErr)
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print ("Number of events", events.count)
        return events.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as!EventCell
        let event = events[indexPath.row]

        cell.eventTitle.text = event.name
        
        return cell
    }
    
}

