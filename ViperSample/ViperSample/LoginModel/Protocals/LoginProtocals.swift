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
    func updateView(email: String, password: String)
    func showNextVC(message:String,views: UIViewController)
}

protocol PresenterToInteractorProtocal: class {
    var presenter: InteractorToPresenterProtocal? { get set }
    func fetchData(email: String, password: String)
}

protocol InteractorToPresenterProtocal: class {
    func loginFailed(message: String)
    func loginResultFetched(result: LoginData)
}

protocol PresenterToViewProtocal: class {
    func showFailedData(message: String)
    func showResult(result: LoginData)
}

protocol PresenterToRouterProtocal: class {
    static func createModule() -> UIViewController
    static func createLoginModule(loginRef: LoginViewController)
    func pushTonextVC(message:String, views: UIViewController)
}
