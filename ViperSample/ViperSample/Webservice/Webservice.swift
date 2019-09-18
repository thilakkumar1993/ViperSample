//
//  Webservice.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Alamofire
import Foundation
import ObjectMapper
import SwiftyJSON
class WebService: NSObject {
    class func userLogin(userName: String, password: String, completion: @escaping (_ response: AnyObject?, _ message: String?, _ success: Bool) -> Void) {
        let loginUrl = URLManager.loginUrl
        let headers = ["Content-Type": "application/json"]
        let params = ["email": userName, "password": password, "type": "native"]
        guard Reachability.isConnectedToNetwork() else {
//            completion(DataLoaderString.internetStatus.localized() as AnyObject,"", false)
            return
        }

        Alamofire.request(loginUrl, method: .post, parameters: params, encoding: JSONEncoding.default, headers: headers).responseJSON { (response: DataResponse<Any>) in
            switch response.result {
            case let .success(json as NSDictionary):
                do {
                    print(json)
                    completion(json as AnyObject?, "", true)
                    // if let success = json.value(forKey: param.successV) as? Bool {
//                        if success == false {
//                            let message =  json.value(forKey: param.messageV) as? String
//                            print(message ?? "")
//                            completion(message as AnyObject?,"",false)
//                        }else  {
//                            if let successResult = json.value(forKey: param.result) as? NSDictionary {
//                                if let token = successResult.value(forKey: param.token) as? NSDictionary {
//                                    let accessToken = token.value(forKey: param.token) as! String
//                                    BaseViewController().setDefaults(key: param.token, value: accessToken)
//                                    print(BaseViewController().getDefaults(key: param.token))
//                                    completion(response.data as AnyObject?, "", true)
//                                }
//                            }
//
//                        }

                    // }
                } catch {
                    print("JSON Error")
                }

            case let .failure(error):

                print(error)

            default:
                print("")
            }
        }
    }
}
