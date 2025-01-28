// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "AEP_SDK",
    platforms: [
        .iOS(.v15), // Specify supported platforms (optional)
    ],
    products: [
        // Define the executables and libraries your package produces.
        .library(
            name: "AEP_SDK",
            targets: ["AEP_SDK"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adobe/aepsdk-core-ios.git", exact: "5.3.2"),
        .package(url: "https://github.com/adobe/aepsdk-assurance-ios.git", exact: "5.0.1"),
    ],
    targets: [
        // Define your targets (modules).
        .target(
            name: "AEP_SDK",
            path: "Source",
            dependencies: [
                .product(name: "AEPCore", package: "aepsdk-core-ios"),
                .product(name: "AEPAssurance", package: "aepsdk-assurance-ios")
            ])
    ]
)