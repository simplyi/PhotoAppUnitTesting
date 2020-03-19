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
    var isLastNameValidated: Bool = false
    var isEmailFormatValidated: Bool = false
    var isPasswordValidated: Bool = false
    var isPasswordEqualityValidated: Bool = false
    
    func isFirstNameValid(firstName: String) -> Bool {
        isFirstNameValidated = true
        return isFirstNameValidated
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        isLastNameValidated = true
        return isLastNameValidated
    }
    
    func isValidEmailFormat(email: String) -> Bool {
        isEmailFormatValidated = true
        return isEmailFormatValidated
    }
    
    func isPasswordValid(password: String) -> Bool {
        isPasswordValidated = true
        return isPasswordValidated
    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        isPasswordEqualityValidated = true
        return isPasswordEqualityValidated
    }

}
