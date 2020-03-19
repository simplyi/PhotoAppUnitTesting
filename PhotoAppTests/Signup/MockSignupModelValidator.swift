//
//  MockSignupModelValidator.swift
//  PhotoAppTests
//
//  Created by Sergey Kargopolov on 2020-03-18.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation
@testable import PhotoApp


class MockSignupModelValidator: SignupModelValidatorProtocol {
    
    var isFirstNameValidated: Bool = false
    
    func isFirstNameValid(firstName: String) -> Bool {
        isFirstNameValidated = true
        return isFirstNameValidated
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        return true
    }
    
    func isValidEmailFormat(email: String) -> Bool {
        return true
    }
    
    func isPasswordValid(password: String) -> Bool {
        return true
    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        return true
    }

}
