//
//  FPSContainerView.swift
//  FPSMonitor
//
//  Created by Adam Wareing on 1/2/2026.
//

import SwiftUI

public struct FPSContainerView: View {

    let config: FPSConfig

    public var body: some View {
        Spacer()
            .overlay(overlay, alignment: config.alignment)
    }

    var overlay: some View {
        FPSView()
            .padding(config.padding)
    }

    public init(config: FPSConfig) {
        self.config = config
    }
}

