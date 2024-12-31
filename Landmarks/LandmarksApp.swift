//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 김승혁 on 12/31/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
