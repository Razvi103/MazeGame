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
            content.add(try! ModelEntity.load(named: "Scene.usda"))
            content.add(try! ModelEntity.load(named: "coin.usdc"))
            content.add(try! ModelEntity.load(named: "maze.usdc"))
            content.add(try! ModelEntity.load(named: "plane.usdc"))
            content.add(try! ModelEntity.load(named: "barrier.usdc"))
        }
    }
}

#Preview {
    SceneView()
}

