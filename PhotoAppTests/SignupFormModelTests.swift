//
//  SignupFormModelTests.swift
//  PhotoAppTests
//
//  Created by Sergey Kargopolov on 2020-02-25.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import XCTest
@testable import PhotoApp

class SignupFormModelTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }


    
    func testSignupFormValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        // Arrange
        let sut = SignupFormModelValidator()
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName:"Sergey")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid firstName but returned FALSE")
        
    }
    
}
