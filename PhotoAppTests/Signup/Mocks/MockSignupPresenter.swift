//
//  MockSignupPresenter.swift
//  PhotoAppTests
//
//  Created by Sergey Kargopolov on 2020-03-25.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation
@testable import PhotoApp

class MockSignupPresenter: SignupPresenterProtocol {
    
    var processUserSignupCalled: Bool = false
    
    required init(formModelValidator: SignupModelValidatorProtocol, webservice: SignupWebServiceProtocol, delegate: SignupViewDelegateProtocol) {
        // TODO:
    }
    
    func processUserSignup(formModel: SignupFormModel) {
        processUserSignupCalled = true
    }

}
