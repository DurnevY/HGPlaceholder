// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HGPlaceholder",
    platforms: [.iOS("13.0")],
    products: [
        .library(
            name: "HGPlaceholder",
            type: .static,
            targets: ["HGPlaceholder"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "HGPlaceholders", path: "HGPlaceholders.xcframework"),
        .target(
            name: "HGPlaceholder",
            dependencies: [
                .target(name: "HGPlaceholders")
            ]
        ),
    ]
)
