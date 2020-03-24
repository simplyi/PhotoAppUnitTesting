//
//  SignupViewControllerTests.swift
//  PhotoAppTests
//
//  Created by Sergey Kargopolov on 2020-03-23.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import XCTest
@testable import PhotoApp

class SignupViewControllerTests: XCTestCase {
    
    var storyboard: UIStoryboard!
    var sut: SignupViewController!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: "SignupViewController") as SignupViewController
        sut.loadViewIfNeeded()
        
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        storyboard = nil
        sut = nil
    }

    func testSignupViewController_WhenCreated_HasRequiredTextFieldsEmpty() {
        XCTAssertEqual(sut.firstNameTextField.text, "", "First name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(sut.lastNameTextField.text, "", "Last name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(sut.emailTextField.text, "", "Email text field was not empty when the view controller initially loaded")
        XCTAssertEqual(sut.passwordTextField.text, "","Password text field was not empty when the view controller initially loaded")
        XCTAssertEqual(sut.repeatPasswordTextField.text, "","Repeat Password text field was not empty when the view controller initially loaded")
    }
}
