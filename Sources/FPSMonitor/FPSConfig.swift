//
//  FPSConfig.swift
//  FPSMonitor
//
//  Created by Adam Wareing on 1/2/2026.
//

import SwiftUI

public struct FPSConfig {

    let alignment: Alignment
    let padding: Double

    public init(
        alignment: Alignment = .topTrailing,
        padding: Double = 8
    ) {
        self.alignment = alignment
        self.padding = padding
    }
}
