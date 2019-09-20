//
//  SessionManager.swift
//  ViperSample
//
//  Created by Thilak kumar on 19/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Alamofire
import AlamofireObjectMapper
import Foundation
import ObjectMapper
import SwiftyJSON
class SessionManager {
    
    static var sharedInstance = SessionManager()
    func ServiceCall<T: Mappable>(url: String, body: [String: Any], method: HTTPMethod, headers: [String: Any], completion: @escaping (_ response: T?, _ message: String?, _ success: Bool) -> Void) {
        guard Reachability.isConnectedToNetwork() else {
            completion(nil, "please check your internet connection", false)
            return
        }
        Alamofire.request(url, method: method, parameters: body, encoding: JSONEncoding.default, headers: headers as? HTTPHeaders).responseObject(completionHandler: { (responseModel: DataResponse<BaseModel<T>>) in
//            let responseModel = Mapper<BaseModel<T>>().map(JSONString: response.result.value as! String)
            if responseModel.result.value?.statusCode == 200 {
                completion(responseModel.result.value?.result, responseModel.result.value?.message, true)

            } else {
                completion(nil, responseModel.result.value?.message ?? "check your request", false)
            }
        })
    }
}
