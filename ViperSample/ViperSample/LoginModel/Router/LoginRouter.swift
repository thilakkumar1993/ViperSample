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
    static func createModule() -> UIViewController {
        let view = mainStoryBoard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        let presenter: ViewToPresenterProtocal & InteractorToPresenterProtocal = LoginPresenter()
        let Interactor: PresenterToInteractorProtocal = LoginInteractor()
        let router: PresenterToRouterProtocal = LoginRouter()

        view?.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = Interactor
        Interactor.presenter = presenter
        return view!
    }

    static var mainStoryBoard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
