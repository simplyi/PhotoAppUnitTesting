//
//  SignupPresenterProtocol.swift
//  PhotoApp
//
//  Created by Sergey Kargopolov on 2020-03-25.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation

protocol SignupPresenterProtocol: AnyObject {
    init(formModelValidator: SignupModelValidatorProtocol, webservice: SignupWebServiceProtocol,
    delegate: SignupViewDelegateProtocol)
    func processUserSignup(formModel: SignupFormModel)
}
