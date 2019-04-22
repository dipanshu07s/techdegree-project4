//
//  Entrant.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 21/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import Foundation

protocol Entrant {
    func swipe(_ pass: AmusementParkPass, on area: AreaAccess)
    func swipe(_ pass: AmusementParkPass, for area: RideAccess)
}

extension Entrant {
    func swipe(_ pass: AmusementParkPass, on area: AreaAccess) {
        if pass.areaAccess.contains(area) {
            print("Access Granted")
        } else {
            print("Access Denied")
        }
    }
    
    func swipe(_ pass: AmusementParkPass, for area: RideAccess) {
        if pass.rideAccess.contains(area) {
            print("You have this priviledge")
        } else {
            print("Sorry you cannot have this priviledge")
        }
    }
}


