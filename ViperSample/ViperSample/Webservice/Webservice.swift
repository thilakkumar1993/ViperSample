//
//  Webservice.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper
import Foundation
import ObjectMapper
import SwiftyJSON
class WebService: NSObject {
    class func userLogin(parameters: [String: Any], completion: @escaping (_ response: LoginData?, _ message: String?, _ success: Bool) -> Void) {
        let headers = ["Content-Type": "application/json"]
        SessionManager.sharedInstance.ServiceCall(url: URLManager.loginUrl, body: parameters, method: .post, headers: headers) { (response: LoginData?, message, status) in
            if status {
                if let resData = response {
                    completion(resData, message, status)
                }

            } else {
                completion(response, message, status)
            }
        }
    }
}
