//
//  RealmUserModel.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/19.
//

import RealmSwift
import SwiftUI

final class RealmUserModel: Object, ObjectKeyIdentifiable {
    
    @Persisted var jwtToken: String = ""
    
    @Persisted var name: String = ""
    @Persisted var id: String = ""
}
