//
//  FPSView.swift
//  FPSMonitor
//
//  Created by Adam Wareing on 1/2/2026.
//

import SwiftUI

public struct FPSView: View {

    @StateObject private var monitor = FrameRateMonitor()

    public var body: some View {
        Text("FPS: \(monitor.fps)")
            .font(.caption)
            .padding(8)
            .background(Color.black.opacity(0.7))
            .foregroundColor(.white)
            .cornerRadius(6)
            .onAppear {
                monitor.startMonitoring()
            }
            .onDisappear {
                monitor.stopMonitoring()
            }
    }

    public init() {

    }
}
