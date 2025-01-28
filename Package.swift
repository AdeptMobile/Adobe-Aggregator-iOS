// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AEP_SDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AEP_SDK",
            targets: ["AEP_SDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adobe/aepsdk-core-ios.git", exact: "5.3.2"),
        .package(url: "https://github.com/adobe/aepsdk-assurance-ios.git", exact: "5.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AEP_SDK",
            dependencies: [
                .target(name: "AEP_SDK", condition: .when(platforms: [.iOS])),
                .product(name: "AEPCore", package: "aepsdk-core-ios"),
                .product(name: "AEPAssurance", package: "aepsdk-assurance-ios")
            ]
        )
    ]
)