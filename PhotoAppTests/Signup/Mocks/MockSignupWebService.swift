//
//  MockSignupWebService.swift
//  PhotoAppTests
//
//  Created by Sergey Kargopolov on 2020-03-20.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation
@testable import PhotoApp


class MockSignupWebService: SignupWebServiceProtocol {
 
    var isSignupMethodCalled: Bool = false
    var shouldReturnError: Bool = false
 
    func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupError?) -> Void) {
        
        isSignupMethodCalled = true
        
        if shouldReturnError {
            completionHandler(nil, SignupError.failedRequest(description: "Signup request was not successful"))
        } else {
            let responseModel = SignupResponseModel(status: "Ok")
            completionHandler(responseModel, nil)
        }
 
    }

}
