//
//  SignupFormModelValidator.swift
//  PhotoAppTests
//
//  Created by Sergey Kargopolov on 2020-02-26.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import XCTest
@testable import PhotoApp

class SignupFormModelValidatorTests: XCTestCase {
    
    var sut: SignupFormModelValidator!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = SignupFormModelValidator()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    // MARK: First Name Validation Unit Tests
    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        
        // Arrange
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "Sergey")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        // Arrange
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        // Assert
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is shorter than \(SignupConstants.firstNameMinLength) characters but it has returned TRUE")
        
    }
    
    func testSignupFormModelValidator_WhenTooLongFirstNameProvided_ShouldReturnFalse() {
        
        let isFirstNameValid = sut.isFirstNameValid(firstName: "SergeySergey")
        
        XCTAssertFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is longer than \(SignupConstants.firstNameMaxLength) characters but it has returned TRUE")
    }
    
    // MARK: Last Name Validation Unit Tests
    func testSignFormModelValidator_WhenValidLastNameProvided_ShouldReturnTrue() {
        
        // Arrange
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "Kargopolov")
        
        // Assert
        XCTAssertTrue(isLastNameValid, "The isLastNameValid() should have returned TRUE for a valid last name but returned FALSE")
    }
    
    func testSignupFormModelValidator_WhenTooShortLastNameProvided_ShouldReturnFalse() {
        
        // Arrange
        // Act
        let isLastNameValid = sut.isLastNameValid(lastName: "K")
        
        // Assert
        XCTAssertFalse(isLastNameValid, "The isLastNameValid() should have returned FALSE for a first name that is shorter than \(SignupConstants.lastNameMinLength) characters but it has returned TRUE")
        
    }
    
}
