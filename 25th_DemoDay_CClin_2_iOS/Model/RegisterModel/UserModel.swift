//
//  UserModel.swift
//  CClin_iOS
//
//  Created by νμΈμ on 2022/05/17.
//

import SwiftUI

class UserModel {
    
    static let shared = UserModel()
    
    var name: String?
    var id: String?
    var password: String?
    var description: String?
    var category: SelectedCategory?
    var foundYear: Int?
    var area: String?
    var clubUrl: String?
    
    private init() { }
}
