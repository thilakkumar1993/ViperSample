//
//  ViewController.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var presenter: ViewToPresenterProtocal?
//    required init(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)!
//    }
    var loginCon = LoginConstant()
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginConstant.userName = "123@gmail.com"
        LoginConstant.password = "test@123"
        presenter?.updateView()

        print(LoginConstant.userName ?? "")
    }
}

extension ViewController: PresenterToViewProtocal {
    func showResult(result: LoginModel) {
        print(result.firstName ?? "")
    }

    func showData() {
        print("")
    }

    func showFailedData() {
        print("")
    }
}
