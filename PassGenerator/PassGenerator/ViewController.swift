//
//  ViewController.swift
//  PassGenerator
//
//  Created by Dipanshu Sehrawat on 19/04/19.
//  Copyright © 2019 Dipanshu Sehrawat. All rights reserved.
//

import UIKit

enum DateError: Error {
    case dateOfBirthError
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let pass1 = try Pass.createChildGuestPassWith(dateOfBirth: Date.createDateOfBirthWith(day: 22, month: 4, year: 2015))
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

        } catch PassError.firstNameMissing {
            print(PassError.firstNameMissing.rawValue)
        } catch PassError.lastNameMissing {
            print(PassError.lastNameMissing.rawValue)
        } catch PassError.streetAddressMissing {
            print(PassError.streetAddressMissing.rawValue)
        } catch PassError.cityMissing {
            print(PassError.cityMissing.rawValue)
        } catch PassError.stateMissing {
            print(PassError.stateMissing.rawValue)
        } catch PassError.zipcodeMissing {
            print(PassError.zipcodeMissing.rawValue)
        } catch DateError.dateOfBirthError {
            print("Invalid data")
        } catch let error {
            print(error.localizedDescription)
        }
        
    }
    
    func swipe(_ passes: [AmusementParkPass]) {
        for pass in passes {
            if let date = pass.entrant.dateOfBirth {
                let calander = Calendar.current
                let birthDay = calander.component(.day, from: date)
                let birthMonth = calander.component(.month, from: date)
                
                if Date.isBirthday(day: birthDay, month: birthMonth) {
                    print("Happy Birthday!!!")
                }
            }
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

