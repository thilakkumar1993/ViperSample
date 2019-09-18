//
//  LoginProtocals.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Foundation
import UIKit
protocol ViewToPresenterProtocal: class {
    var view: PresenterToViewProtocal? { get set }
    var interactor: PresenterToInteractorProtocal? { get set }
    var router: PresenterToRouterProtocal? { get set }
    func updateView()
//    func callLogin(login:LoginConstant)
}

protocol PresenterToInteractorProtocal: class {
    var presenter: InteractorToPresenterProtocal? { get set }
    func fetchData()
//    func fetchLogin(login:LoginConstant)
}

protocol InteractorToPresenterProtocal: class {
    func loginDetailFetched()
    func loginFailed()
    func loginResultFetched(result: LoginModel)
}

protocol PresenterToViewProtocal: class {
    func showData()
    func showFailedData()
    func showResult(result: LoginModel)
}

protocol PresenterToRouterProtocal: class {
    static func createModule() -> UIViewController
}
