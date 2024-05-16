//
//  MazeGameApp.swift
//  MazeGame
//
//  Created by Razvan Bocra on 16.05.2024.
//

import SwiftUI

@main
struct MazeGameApp: App {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    
    var body: some Scene {
        WindowGroup {
            ContentView().task {
                await openImmersiveSpace(id: "ImmersiveSpace")
            }
        }.windowStyle(.volumetric)

        ImmersiveSpace(id: "ImmersiveSpace") {
            SceneView()
            ImmersiveView()
        }
    }
}
