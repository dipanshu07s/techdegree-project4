//
//  ViewController.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 19/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let pass1 = try Pass.createChildGuestPassWith(dateOfBirth: Date())
//            let pass2 = try Pass.createChildGuestPassWith(dateOfBirth: nil)
            let pass3 = try Pass.createClassicGuestPassWith()
            let pass4 = try Pass.createVipGuestPassWith()
            let pass5 = try Pass.createManagerWith(firstName: "Dipanshu", lastName: "Sehrawat", streetAddress: "123 some street", city: "Delhi", state: "Delhi", zipCode: 110001)
//            let pass6 = try Pass.createManagerWith(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let pass7 = try Pass.createRideServiceEmployeeWith(firstName: "Steve", lastName: "Smith", streetAddress: "234 av", city: "Bengaluru", state: "Karnataka", zipCode: 455633)
//            let pass8 = try Pass.createFoodServiceEmployeeWith(firstName: nil, lastName: nil, streetAddress: nil, city: nil, state: nil, zipCode: nil)
            let pass9 = try Pass.createMaintenanceEmployeeWith(firstName: "Adam", lastName: "Kumar", streetAddress: "456 some street", city: "some city", state: "some state", zipCode: 13434)
            let pass10 = try Pass.createFoodServiceEmployeeWith(firstName: "some name", lastName: "some last name", streetAddress: "another street", city: "another city", state: "another city", zipCode: 343345)
            let passes = [pass1, pass3, pass4, pass5, pass7, pass9, pass10] // + [pass2, pass6, pass8]
            swipe(passes)
        } catch MissingInfo.firstNameMissing {
            print(MissingInfo.firstNameMissing.rawValue)
        } catch MissingInfo.lastNameMissing {
            print(MissingInfo.lastNameMissing.rawValue)
        } catch MissingInfo.streetAddressMissing {
            print(MissingInfo.streetAddressMissing.rawValue)
        } catch MissingInfo.cityMissing {
            print(MissingInfo.cityMissing.rawValue)
        } catch MissingInfo.stateMissing {
            print(MissingInfo.stateMissing.rawValue)
        } catch MissingInfo.zipcodeMissing {
            print(MissingInfo.zipcodeMissing.rawValue)
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func swipe(_ passes: [AmusementParkPass]) {
        for pass in passes {
            pass.entrant.swipe(pass, for: .allRides)
            pass.entrant.swipe(pass, for: .skipAllLines)

            pass.entrant.swipe(pass, on: .amusement)
            pass.entrant.swipe(pass, on: .kitchen)
            pass.entrant.swipe(pass, on: .maintenance)
            pass.entrant.swipe(pass, on: .office)
            pass.entrant.swipe(pass, on: .rideControl)
        }
    }
}

