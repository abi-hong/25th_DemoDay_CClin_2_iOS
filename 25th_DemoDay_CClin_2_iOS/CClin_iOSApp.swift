//
//  CClin_iOSApp.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/12.
//

import SwiftUI

@main
struct CClin_iOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
//            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
