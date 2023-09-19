//
//  lecture_projectApp.swift
//  lecture project
//
//  Created by Joseph Comeaux on 6/16/22.
//

import SwiftUI

@main
struct lecture_projectApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
