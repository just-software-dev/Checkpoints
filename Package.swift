// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Checkpoints",
    platforms: [
        .iOS(.v13),
    ],
    products: [
        .library(
            name: "Checkpoints",
            targets: ["Checkpoints"]),
    ],
    dependencies: [
        .package(url: "https://github.com/just-software-dev/HsExtensions.Swift.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "Checkpoints",
            dependencies: [
                .product(name: "HsExtensions", package: "HsExtensions.Swift"),
            ],
            resources: [
                .copy("Assets")
            ]),
        .testTarget(
            name: "CheckpointTests",
            dependencies: [
                "Checkpoints",
                .product(name: "HsExtensions", package: "HsExtensions.Swift"),
            ]),
    ]
)
