//
//  ViewController.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 19/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import UIKit

enum PassError: Error {
    case invalidPass
}

class ViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let passes = Park.park() {
            for pass in passes {
                swipe(pass, for: .allRides)
                swipe(pass, for: .skipAllLines)
                
                swipe(pass, on: .amusement)
                swipe(pass, on: .kitchen)
                swipe(pass, on: .maintenance)
                swipe(pass, on: .office)
                swipe(pass, on: .rideControl)
                
            }
        }
        
    }
    
    func swipe(_ entrant: Pass, on area: AreaAccess) {
        if entrant.areaAccess.contains(area) {
            print("Access Granted")
        } else {
            print("Access Denied")
        }
    }
    
    func swipe(_ entrant: Pass, for area: RideAccess) {
        if entrant.rideAccess.contains(area) {
            print("You have this priviledge")
        } else {
            print("Sorry you cannot have this priviledge")
        }
    }
}

