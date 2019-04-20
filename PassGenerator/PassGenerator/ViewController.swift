//
//  ViewController.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 19/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let employee = RideServiceEmployee(firstName: "Dipanshu", lastName: "Sehrawat", streetAddress: "123", city: "Delhi", state: "Delhi", zip: 110039)
    let guest1 = VipGuest()

    override func viewDidLoad() {
        super.viewDidLoad()
        swipe(employee, on: .skipRideLines)
    }

    func swipe(_ entrant: Entrant, on area: Benefit) {
        if entrant.benefits.contains(area) {
            print("You can enter")
        } else {
            print("You are not allowed")
        }
    }
}

