//
//  SignupFormRequestModel.swift
//  PhotoApp
//
//  Created by Sergey Kargopolov on 2020-03-05.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation

struct SignupFormRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
