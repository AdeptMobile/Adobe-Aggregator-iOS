// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "DependencyAggregator",
    platforms: [
        .iOS(.v13)
    ],
    dependencies: [
        // Add your dependencies here
        .package(url: "https://github.com/adobe/aepsdk-assurance-ios.git", exact: "5.0.1"),
        .package(url: "https://github.com/adobe/aepsdk-core-ios.git", exact: "5.3.2")
    ],
    targets: [
        // Add an empty target (optional, to resolve dependencies)
        .target(
            name: "DependencyAggregator",
            dependencies: [
                .product(name: "AEPAssurance", package: "aepsdk-assurance-ios"),
                .product(name: "AEPCore", package: "aepsdk-core-ios"),
            ],
        )
    ]
)