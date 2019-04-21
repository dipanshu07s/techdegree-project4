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
    
    var childPass: Pass!
//    var invalidChildPass: Pass!
    var classicGuestPass: Pass!
    var vipGuestPass: Pass!
    var managerPass: Pass!
//    var invalidManagerPass: Pass!
    var rideServiceEmployeePass: Pass!
//    var invalidFoodServiceEmployeePass: Pass!
    var maintenanceEmployeePass: Pass!
    var foodServiceEmployeePass: Pass!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createPasses()
        
        swipe(childPass, on: .amusement)
        swipe(childPass, on: .kitchen)
        swipe(childPass, on: .maintenance)
        swipe(classicGuestPass, on: .amusement)
        swipe(classicGuestPass, on: .kitchen)
        swipe(vipGuestPass, on: .amusement)
        swipe(vipGuestPass, on: .office)
        swipe(managerPass, on: .rideControl)
        swipe(managerPass, on: .amusement)
        swipe(rideServiceEmployeePass, on: .rideControl)
        swipe(rideServiceEmployeePass, on: .office)
        swipe(maintenanceEmployeePass, on: .amusement)
        swipe(maintenanceEmployeePass, on: .office)
        swipe(foodServiceEmployeePass, on: .kitchen)
        swipe(foodServiceEmployeePass, on: .office)
        
        swipe(childPass, for: .skipAllLines)
        swipe(childPass, for: .allRides)
        swipe(classicGuestPass, for: .allRides)
        swipe(vipGuestPass, for: .skipAllLines)
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
    
    func createPasses() {
        guard let pass1 = CreatePass.createChildGuestPassWith(dateOfBith: Date()),
//        let pass2 = CreatePass.createChildGuestPassWith(dateOfBith: nil),
        let pass3 = CreatePass.createClassicGuestPassWith(),
        let pass4 = CreatePass.createVipGuestPassWith(),
        let pass5 = CreatePass.createManagerWith(firstName: "Dipanshu", lastName: "Sehrawat", streetAddress: "123 some street", city: "Delhi", state: "Delhi", zipCode: 110001),
//        let pass6 = CreatePass.createManagerWith(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil),
        let pass7 = CreatePass.createRideServiceEmployeeWith(firstName: "Steve", lastName: "Smith", streetAddress: "234 av", city: "Bengaluru", state: "Karnataka", zipCode: 455633),
//        let pass8 = CreatePass.createFoodServiceEmployeeWith(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil),
        let pass9 = CreatePass.createMaintenanceEmployeeWith(firstName: "Adam", lastName: "Kumar", streetAddress: "456 some street", city: "some city", state: "some state", zipCode: 13434),
        let pass10 = CreatePass.createFoodServiceEmployeeWith(firstName: "some name", lastName: "some last name", streetAddress: "another street", city: "another city", state: "another city", zipCode: 343345) else {
                return
        }
        
        childPass = pass1
//        invalidChildPass = pass2
        classicGuestPass = pass3
        vipGuestPass = pass4
        managerPass = pass5
//        invalidManagerPass = pass6
        rideServiceEmployeePass = pass7
//        invalidFoodServiceEmployeePass = pass8
        maintenanceEmployeePass = pass9
        foodServiceEmployeePass = pass10
        
    }
    
}

