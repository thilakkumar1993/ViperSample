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

    func fetchData() {
        // "versionswift15@gmail.com"
        // "test123"
        print(LoginConstant.userName ?? "wri")
        WebService.userLogin(userName: LoginConstant.userName ?? "versionswift15@gmail.com", password: LoginConstant.userName ?? "test123") { result, _, _ in
            print(result ?? "")
            if let resu = result as? NSDictionary {
                let value = resu.value(forKey: "result") as? NSDictionary
                let resp = value?.value(forKey: "resp")

                let arrayObject = Mapper<LoginModel>().mapArray(JSONArray: [resp as! [String: Any]])
                print(LoginConstant.userName ?? "wri")
                self.presenter?.loginDetailFetched()
                if let obj = arrayObject.first {
                    self.presenter?.loginResultFetched(result: obj)
                }
            }
        }
    }

    func fetchLogin(login _: LoginConstant) {
        print("")
        print(LoginConstant.userName ?? "wri")
        WebService.userLogin(userName: LoginConstant.userName ?? "", password: LoginConstant.password ?? "") { result, _, _ in
            print(result ?? "")
            if let resu = result as? NSDictionary {
                let value = resu.value(forKey: "result") as? NSDictionary
                let resp = value?.value(forKey: "resp")
                let arrayObject = Mapper<LoginModel>().mapArray(JSONArray: [resp as! [String: Any]])

                print(arrayObject[0].lastName ?? "")
                self.presenter?.loginDetailFetched()
                self.presenter?.loginResultFetched(result: arrayObject[0])
            }
        }
    }
}
