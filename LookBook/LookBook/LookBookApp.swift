//
//  LookBookApp.swift
//  LookBook
//
//  Created by Farabi Dharma on 21/07/22.
//

import SwiftUI

@main
struct LookBookApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
