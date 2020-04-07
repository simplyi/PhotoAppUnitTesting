//
//  SignupErrors.swift
//  PhotoApp
//
//  Created by Sergey Kargopolov on 2020-03-05.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation

enum SignupError: LocalizedError, Equatable {
    
    case invalidResponseModel
    case invalidRequestURLString
    case failedRequest(description: String)
    case invalidFirstName
    case invalidLastName
    case invalidEmail
    case invalidPassword
    case passwordsDoNotMatch
    
    var errorDescription: String? {
        switch self {
        case .failedRequest(let description):
            return description
        case .invalidResponseModel,
             .invalidRequestURLString,
             .invalidFirstName,
             .invalidLastName,
             .invalidEmail,
             .invalidPassword,
             .passwordsDoNotMatch:
            return ""
        }
    }
    
}
