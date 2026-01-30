//
//  FPSWindow.swift
//  FPSMonitor
//
//  Created by Adam Wareing on 1/2/2026.
//

import UIKit

class FPSWindow: UIWindow {

    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        // we don't want to accept touches at all
        return nil
    }
}
