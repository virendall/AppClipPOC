//
//  UserModel.swift
//  CitiAppClip
//
//  Created by Virender Dall on 18/11/21.
//

import Foundation

class UserModel {
    
    static let shared = UserModel()
    var parasedCityName: String?
    var title, firstName, lastName, city, mobile: String?
    var occupation, companyName, income: String?
    var address, addressCity, state: String?
    
    private init() {}
    
    func reset() {
        title = nil; firstName = nil; lastName = nil; city = nil; mobile = nil;
        occupation = nil; companyName = nil; income = nil;
        address = nil; addressCity = nil; state = nil;
    }
}
