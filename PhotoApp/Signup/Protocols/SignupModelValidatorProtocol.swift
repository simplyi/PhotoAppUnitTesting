//
//  SignupModelValidatorProtocol.swift
//  PhotoApp
//
//  Created by Sergey Kargopolov on 2020-03-19.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation


protocol SignupModelValidatorProtocol {
    
      func isFirstNameValid(firstName: String) -> Bool
      
      func isLastNameValid(lastName: String) -> Bool
      
      func isValidEmailFormat(email: String) -> Bool
      func isPasswordValid(password: String) -> Bool
      
      func doPasswordsMatch(password: String, repeatPassword: String) -> Bool 
}
