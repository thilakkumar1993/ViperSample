//
//  SignUpProtocal.swift
//  ViperSample
//
//  Created by Thilak kumar on 23/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Foundation
import UIKit
protocol SignUpViewToPresentProtocal {
    var view:SignUpPresenterToViewProtocal? {get set}
    var router: SignUpPresenterToRouterProtocal? {get set}
    func viewDidLoad()
}
protocol SignUpPresentToInteractorProtocal {
    var present:SignUpInteractorToPresentProtocal? {get set}
}
protocol SignUpInteractorToPresentProtocal {
    
}
protocol SignUpPresenterToViewProtocal {
     func showMessage(message: String)
}
protocol SignUpPresenterToRouterProtocal {
    func createSignUpModule(signUpVC: UIViewController)
}
