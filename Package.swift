
// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "igi_sdk",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "adobe_sdk",
            targets: ["abobe_sdk_source"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adobe/aepsdk-assurance-ios.git", exact: "5.0.1"),
        .package(url: "https://github.com/adobe/aepsdk-core-ios.git", exact: "5.3.2")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "abobe_sdk_source",
            dependencies: [
                //.target(name: "abobe_sdk", condition: .when(platforms: [.iOS])),
                .product(name: "AEPAssurance", package: "aepsdk-assurance-ios"),
                .product(name: "AEPCore", package: "aepsdk-core-ios")
            ]
            //path: "Sources"
        )
        //.binaryTarget(name: "adobe_sdk", path: "./Sources/Frameworks/igi_sdk.xcframework")
    ]
)