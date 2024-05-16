//
//  SceneView.swift
//  MazeGame
//
//  Created by Marius Boroica on 16.05.2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct SceneView: View {
    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
                print("LOADED")
                content.add(scene)
            }
        }
    }
}

#Preview {
    SceneView()
}

