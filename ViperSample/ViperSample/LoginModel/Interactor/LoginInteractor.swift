//
//  LoginInteractor.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Alamofire
import Foundation
import ObjectMapper
class LoginInteractor: PresenterToInteractorProtocal {
    
    var presenter: InteractorToPresenterProtocal?
    func fetchData(email: String, password: String) {
        let parammeters = ["email": email, "password": password, "type": "native"]
        WebService.userLogin(parameters: parammeters) { result, message, status in
            if status {
                if let response = result {
                    self.presenter?.loginResultFetched(result: response)
                }
            } else {
                self.presenter?.loginFailed(message: message ?? "")
            }
        }
    }
}
