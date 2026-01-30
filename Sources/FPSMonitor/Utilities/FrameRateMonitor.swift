//
//  FrameRateMonitor.swift
//  FPSMonitor
//
//  Created by Adam Wareing on 1/2/2026.
//

import Combine
import QuartzCore

class FrameRateMonitor: ObservableObject {
    @Published var fps: Int = 60

    private var displayLink: CADisplayLink?
    private var lastTimestamp: CFTimeInterval = 0
    private var frameCount: Int = 0

    func startMonitoring() {
        displayLink = CADisplayLink(target: self, selector: #selector(tick))
        displayLink?.add(to: .main, forMode: .common)
    }

    @objc private func tick(_ displayLink: CADisplayLink) {
        let currentTimestamp = displayLink.timestamp

        if lastTimestamp == 0 {
            lastTimestamp = currentTimestamp
            return
        }

        frameCount += 1
        let elapsed = currentTimestamp - lastTimestamp

        if elapsed >= 1.0 {
            fps = Int(Double(frameCount) / elapsed)
            frameCount = 0
            lastTimestamp = currentTimestamp
        }
    }

    func stopMonitoring() {
        displayLink?.invalidate()
        displayLink = nil
    }
}
