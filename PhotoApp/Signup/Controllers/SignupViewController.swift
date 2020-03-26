//
//  SignupViewController.swift
//  PhotoApp
//
//  Created by Sergey Kargopolov on 2020-03-23.
//  Copyright © 2020 Sergey Kargopolov. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    var signupPresenter: SignupPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if signupPresenter == nil {
            let signupModelValidator = SignupFormModelValidator()
            let webservice = SignupWebService(urlString: SignupConstants.signupURLString)
            
            signupPresenter = SignupPresenter(formModelValidator: signupModelValidator, webservice: webservice, delegate: self)
        }
    }
    
 
    @IBAction func signupButtonTapped(_ sender: Any) {
        let signupFormModel = SignupFormModel(firstName: firstNameTextField.text ?? "",
                                              lastName: lastNameTextField.text ?? "",
                                              email: emailTextField.text ?? "",
                                              password: passwordTextField.text ?? "",
                                              repeatPassword: repeatPasswordTextField.text ?? "" )
        
        signupPresenter?.processUserSignup(formModel: signupFormModel)
    }
    
}

extension SignupViewController: SignupViewDelegateProtocol {
    func successfullSignup() {
        // TODO:
    }
    
    func errorHandler(error: SignupError) {
        // TODO:
    }
    
    
}
