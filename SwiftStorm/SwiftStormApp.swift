//
//  SwiftStormApp.swift
//  SwiftStorm
//
//  Created by Michel Storms on 22/10/2025.
//

import SwiftUI
import CoreData
import InsightKit

let logger = InsightCenter.shared

@main
struct SwiftStormApp: App {
    let persistenceController = PersistenceController.shared

    init() {
        logger.info("SwiftStormApp.init() - InsightCenter log directory: \(logger.logDirectory)")
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
