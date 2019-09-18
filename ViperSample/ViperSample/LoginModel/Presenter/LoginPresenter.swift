//
//  LoginPresenter.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Foundation
class LoginPresenter: ViewToPresenterProtocal {
    var view: PresenterToViewProtocal?

    var interactor: PresenterToInteractorProtocal?

    var router: PresenterToRouterProtocal?

    func updateView() {
        interactor?.fetchData()
    }

//    func callLogin(login: LoginConstant) {
//      //  interactor?.fetchLogin(login: login)
//    }
}

extension LoginPresenter: InteractorToPresenterProtocal {
    func loginResultFetched(result: LoginModel) {
        view?.showResult(result: result)
    }

    func loginDetailFetched() {
        view?.showData()
    }

    func loginFailed() {
        view?.showFailedData()
    }
}
