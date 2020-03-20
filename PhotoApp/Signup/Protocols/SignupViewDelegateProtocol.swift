//
//  SignupViewDelegateProtocol.swift
//  PhotoApp
//
//  Created by Sergey Kargopolov on 2020-03-20.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation

protocol SignupViewDelegateProtocol: AnyObject {
    func successfullSignup()
    func errorHandler(error: SignupError)
}
