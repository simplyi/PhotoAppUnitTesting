//
//  SignupPresenterTests.swift
//  PhotoAppTests
//
//  Created by Sergey Kargopolov on 2020-03-18.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import XCTest
@testable import PhotoApp

class SignupPresenterTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    
    func testSignupPresenter_WhenInformationProvided_WillValidateEachProperty() {
        // Arrange
        let signupFormModel = SignupFormModel(firstName: "Sergey",
                                              lastName: "Kargopolov",
                                              email: "test@test.com",
                                              password:"12345678",
                                              repeatPassword:"12345678")
        
        // Act
        
        // Assert
    }
}
