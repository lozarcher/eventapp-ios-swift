//
//  EventResponse.swift
//  Eventapp
//
//  Created by Laurence Archer on 13/02/2019.
//  Copyright © 2019 Laurence Archer. All rights reserved.
//

import Foundation

struct EventResponse : Decodable {
    var date: Double
    var data: [Event]
    init () {
        date = 0
        data = []
    }
}
