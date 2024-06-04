//
//  RefrigeratorRecipeAppApp.swift
//  RefrigeratorRecipeApp
//
//  Created by 小野拓人 on 2024/06/04.
//

import SwiftUI
import SwiftData

@main
struct RefrigeratorRecipeAppApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
