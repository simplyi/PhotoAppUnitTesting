//
//  MockSignupViewDelegate.swift
//  PhotoAppTests
//
//  Created by Sergey Kargopolov on 2020-03-20.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import Foundation
import XCTest
@testable import PhotoApp

class MockSignupViewDelegate: SignupViewDelegateProtocol {
    var expectation: XCTestExpectation?
    
    func successfullSignup() {
        expectation?.fulfill()
    }
    
    func errorHandler(error: SignupError) {
        //
    }
    
    

    
}
