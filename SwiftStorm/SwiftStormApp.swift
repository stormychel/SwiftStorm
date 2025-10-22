//
//  SwiftStormApp.swift
//  SwiftStorm
//
//  Created by Michel Storms on 22/10/2025.
//

import SwiftUI
import CoreData

@main
struct SwiftStormApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
