//
//  SignUpRouter.swift
//  ViperSample
//
//  Created by Thilak kumar on 23/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Foundation
import UIKit
class SignUpRouter:SignUpPresenterToRouterProtocal {
    
   class func createSignUpModules(with message: String, and signUpVC: SignUpViewController) {
        print(message)
        let presenter = SignUpPresenter()
        presenter.message = message
        signUpVC.presenter = presenter
        signUpVC.presenter?.view = signUpVC
    signUpVC.presenter?.router = SignUpRouter()
    }
    func createSignUpModule(signUpVC: UIViewController) {
        
    }
}
