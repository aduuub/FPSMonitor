// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FPSMonitor",
    platforms: [
        .iOS(.v14),
        .tvOS(.v13),
        .watchOS(.v6),
        .visionOS(.v1)
    ],
    products: [
        .library(name: "FPSMonitor", targets: ["FPSMonitor"])
    ],
    targets: [
        .target(name: "FPSMonitor")
    ]
)
