//
//  LoginRouter.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Foundation
import UIKit
class LoginRouter: PresenterToRouterProtocal {
    static func createLoginModule(loginRef: LoginViewController) {
        let presenter: ViewToPresenterProtocal & InteractorToPresenterProtocal = LoginPresenter()
        let router: PresenterToRouterProtocal = LoginRouter()
        let interactor: PresenterToInteractorProtocal = LoginInteractor()
        loginRef.presenter = presenter
        presenter.view = loginRef
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        LoginConstant.userName = ""
        LoginConstant.password = ""
    }

    static func createModule() -> UIViewController {
        let loginView = mainStoryBoard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
//        let presenter: ViewToPresenterProtocal & InteractorToPresenterProtocal = LoginPresenter()
//        let Interactor: PresenterToInteractorProtocal = LoginInteractor()
//        let router: PresenterToRouterProtocal = LoginRouter()
//        loginView?.presenter = presenter
//        presenter.view = loginView
//        presenter.router = router
//        presenter.interactor = Interactor
//        Interactor.presenter = presenter
        return loginView!
    }

    static var mainStoryBoard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
