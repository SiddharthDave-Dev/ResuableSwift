// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ResuableSwift",
    platforms: [
        .iOS(.v18)
    ],
    products: [
        .library(
            name: "ResuableSwift",
            targets: ["ResuableSwift"]),
    ],
    targets: [
        .target(
            name: "ResuableSwift",
            dependencies: []
        ),

    ]
)
