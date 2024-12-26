// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HelloWorld",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "HelloWorld", targets: ["HelloWorld"]),
        .library(name: "ModuleA", targets: ["ModuleA"]),
        .library(name: "ModuleB", targets: ["ModuleB"]),
        .library(name: "Products", targets: ["Products"])
    ],
    targets: [
        .target(
            name: "HelloWorld",
            dependencies: ["ModuleA", "ModuleB", "Products"]),
        .testTarget(
            name: "HelloWorldTests",
            dependencies: ["HelloWorld"]),
        .target(name: "ModuleA"),
        .target(
            name: "ModuleB",
            dependencies: ["ModuleA"]),
        .target(name: "Products"),
    ]
)
