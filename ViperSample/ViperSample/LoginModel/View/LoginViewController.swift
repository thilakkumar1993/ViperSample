//
//  LoginViewController.swift
//  ViperSample
//
//  Created by Thilak kumar on 19/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    var presenter: ViewToPresenterProtocal?
    var loginCon = LoginConstant()
    override func viewDidLoad() {
        super.viewDidLoad()
       LoginRouter.createLoginModule(loginRef: self)
    }
    @IBAction func loginBtnAction(_ sender: Any) {
        presenter?.updateView(email:LoginConstant.userName ?? "", password:LoginConstant.password ?? "")
    }
}

extension LoginViewController: PresenterToViewProtocal {
    func showResult(result: LoginData) {
         print(result.resp?.firstName ?? "")
    }
    func showFailedData(message:String) {
        print(message)
    }
}
