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

// {
//    message = Authenticated;
//    result =     {
//        jwt = "JWT eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI1ZDQxMzIyYzcyMTA1NDA2YjQ1NGRlMTciLCJpYXQiOjE1Njg3MjY3MTB9.3de0fzhQ459-EJC_BA_Hk8qlCnCOhKpbvbBIax_8DFY";
//        resp =         {
//            "__v" = 0;
//            "_id" = 5d41322c72105406b454de17;
//            date = "2019-04-29T11:59:17.156Z";
//            email = "versionswift15@gmail.com";
//            firstName = Thilak;
//            isVerified = 0;
//            lastName = "K S";
//            phoneNumber = "<null>";
//            profileImage = "<null>";
//            role = user;
//            type =             (
//            native
//            );
//        };
//    };
//    statusCode = 200;
//    success = 1;
// }
