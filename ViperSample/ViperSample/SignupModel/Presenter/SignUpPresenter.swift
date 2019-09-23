//
//  SignUpPresenter.swift
//  ViperSample
//
//  Created by Thilak kumar on 23/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Foundation
class SignUpPresenter: SignUpViewToPresentProtocal {
    var view: SignUpPresenterToViewProtocal?
    
    var router: SignUpPresenterToRouterProtocal?
    var message: String?
    func viewDidLoad() {
        view?.showMessage(message:message ?? "" )
    }
}
