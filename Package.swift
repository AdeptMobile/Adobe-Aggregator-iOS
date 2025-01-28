// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AEP_SDK",
    platforms: [
        .iOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/adobe/aepsdk-core-ios.git", exact: "5.3.2"),
        .package(url: "https://github.com/adobe/aepsdk-assurance-ios.git", exact: "5.0.1"),
    ]
)