//
//  LoginPresenter.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Foundation
import UIKit
class LoginPresenter: ViewToPresenterProtocal {
    
    
   
    
    var view: PresenterToViewProtocal?

    var interactor: PresenterToInteractorProtocal?

    var router: PresenterToRouterProtocal?

    func updateView(email: String, password: String) {
        interactor?.fetchData(email: email, password: password)
    }
    func showNextVC(message: String, views: UIViewController) {
        router?.pushTonextVC(message: message, views: views)
    }
//    func showNextVC(views: UIViewController) {
//       router?.pushTonextVC(views: views)
//    }
    
}

extension LoginPresenter: InteractorToPresenterProtocal {
    func loginFailed(message: String) {
        view?.showFailedData(message: message)
    }

    func loginResultFetched(result: LoginData) {
        view?.showResult(result: result)
    }
}
