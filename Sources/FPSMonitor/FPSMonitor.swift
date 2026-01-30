//
//  FPSMonitor.swift
//  FPSMonitor
//
//  Created by Adam Wareing on 1/2/2026.
//
import UIKit
import SwiftUI

@MainActor
public class FPSMonitor {

    public static let shared = FPSMonitor()

    private var window: UIWindow?

    private init() {
        // Use the shared instance
    }

    public func show(on windowScene: UIWindowScene, config: FPSConfig = .init()) {
        let window = Self.createWindow(windowScene: windowScene)

        let rootView = FPSContainerView(config: config)
        let controller = UIHostingController(rootView: rootView)
        controller.view.backgroundColor = .clear
        window.rootViewController = controller
        window.makeKeyAndVisible()

        self.window = window
    }

    public func hide() {
        window?.isHidden = true
        window = nil
    }

    private static func createWindow(windowScene: UIWindowScene) -> UIWindow {
        let window = FPSWindow(windowScene: windowScene)
        window.windowLevel = .alert + 1
        window.backgroundColor = .clear
        return window
    }
}
