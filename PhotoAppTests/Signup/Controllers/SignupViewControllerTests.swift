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

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupViewController_WhenCreated_HasRequiredTextFieldsEmpty() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let sut = storyboard.instantiateViewController(identifier: "SignupViewController") as? SignupViewController
    }
}
