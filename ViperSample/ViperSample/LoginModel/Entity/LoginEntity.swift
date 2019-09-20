//
//  LoginEntity.swift
//  ViperSample
//
//  Created by Thilak kumar on 17/09/19.
//  Copyright © 2019 Thilak kumar. All rights reserved.
//

import Foundation
import ObjectMapper
private let ids = "_id"
private let dates = "date"
private let emails = "email"
private let firstNames = "firstName"
private let isVerifieds = "isVerified"
private let lastNames = "lastName"
private let phoneNumbers = "phoneNumber"
private let messages = "message"
private let results = "result"
private let statusCodes = "statusCode"
private let successs = "success"
private let jwts = "jwt"
private let resps = "resp"
private let vs = "__v"
private let profileImages = "profileImage"
private let roles = "role"

class BaseModel<T>: NSObject, Mappable where T: Mappable {
    internal var message: String?
    internal var statusCode: Int?
    internal var success: Bool?
    internal var result: T?

    required init?(map: Map) {
        super.init()
        mapping(map: map)
    }

    func mapping(map: Map) {
        message <- map[messages]
        statusCode <- map[statusCodes]
        success <- map[successs]
        result <- map[results]
    }
}

// class LoginResult:Mappable {
//
//    internal var message: String?
//    internal var statusCode: Int?
//    internal var success: Bool?
//    internal var result: LoginData?
//
//    required init?(map: Map) {
//        mapping(map: map)
//    }
//
//     func mapping(map: Map) {
//        message <- map[messages]
//        statusCode <- map[statusCodes]
//        success <- map[successs]
//        result <- map[results]
//    }
// }
class LoginData: Mappable {
    internal var jwt: String?
    internal var resp: LoginModel?
    required init?(map: Map) {
        mapping(map: map)
    }

    func mapping(map: Map) {
        jwt <- map[jwts]
        resp <- map[resps]
    }
}

class LoginModel: Mappable {
    internal var id: String?
    internal var date: String?
    internal var email: String?
    internal var firstName: String?
    internal var isVerified: String?
    internal var lastName: String?
    internal var phoneNumber: String?
    required init?(map: Map) {
        mapping(map: map)
    }

    func mapping(map: Map) {
        id <- map[ids]
        date <- map[dates]
        email <- map[emails]
        firstName <- map[firstNames]
        isVerified <- map[isVerifieds]
        lastName <- map[lastNames]
        phoneNumber <- map[phoneNumbers]
    }
}
