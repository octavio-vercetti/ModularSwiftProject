// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HelloWorld",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "HelloWorld", targets: ["HelloWorld"]),
        .library(name: "ModuleA", targets: ["ModuleA"]),
        .library(name: "ModuleB", targets: ["ModuleB"])
    ],
    targets: [
        .target(
            name: "HelloWorld",
            dependencies: ["ModuleA", "ModuleB"]),
        .testTarget(
            name: "HelloWorldTests",
            dependencies: ["HelloWorld"]),
        .target(name: "ModuleA"),
        .target(
            name: "ModuleB",
            dependencies: ["ModuleA"])
    ]
)
