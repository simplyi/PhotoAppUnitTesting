//
//  SignupFormModelValidator.swift
//  PhotoApp
//
//  Created by Sergey Kargopolov on 2020-02-26.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation


class SignupFormModelValidator {
    
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        var returnValue = true
        
        if lastName.isEmpty {
            returnValue = false
        }
        
        return returnValue
    }
    
}
