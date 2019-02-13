//
//  Event.swift
//  Eventapp
//
//  Created by Laurence Archer on 13/02/2019.
//  Copyright © 2019 Laurence Archer. All rights reserved.
//

import Foundation

struct Event : Decodable {
    var id : Int64
    var name : String?
    var description : String?
}
