// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ConsoleLog",
    platforms: [
        .macOS(.v13),
        .iOS(.v16),
        .visionOS(.v1),
        .watchOS(.v9),
    ],
    products: [
        .library(
            name: "ConsoleLog",
            targets: ["ConsoleLog"]
        )
    ],
    targets: [
        .target(
            name: "ConsoleLog"
        )
    ]
)
