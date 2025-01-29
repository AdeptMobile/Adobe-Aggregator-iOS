// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "Adobe-Aggregator-iOS",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Adobe-Aggregator-iOS",
            targets: ["Adobe-Aggregator-iOS"]),
    ],
    dependencies: [
        .package(url: "https://github.com/adobe/aepsdk-assurance-ios.git", exact: "5.0.1"),
        .package(url: "https://github.com/adobe/aepsdk-core-ios.git", exact: "5.3.2"),
        .package(url: "https://github.com/adobe/aepsdk-edge-ios.git", exact: "5.0.3"),
        .package(url: "https://github.com/adobe/aepsdk-edgeconsent-ios.git", exact: "5.0.0"),
        .package(url: "https://github.com/adobe/aepsdk-edgeidentity-ios.git", exact: "5.0.0"),
        .package(url: "https://github.com/adobe/aepsdk-messaging-ios.git", exact: "5.6.0"),
        .package(url: "https://github.com/adobe/aepsdk-optimize-ios", exact: "5.2.0"),
        .package(url: "https://github.com/adobe/aepsdk-places-ios", exact: "5.0.0"),
        .package(url: "https://github.com/adobe/aepsdk-userprofile-ios.git", exact: "5.0.0")
    ],
    targets: [
        .target(
            name: "Adobe-Aggregator-iOS",
            dependencies: [
                .product(name: "AEPAssurance", package: "aepsdk-assurance-ios"),
                .product(name: "AEPCore", package: "aepsdk-core-ios"),    
                .product(name: "AEPIdentity", package: "aepsdk-core-ios"),  
                .product(name: "AEPLifecycle", package: "aepsdk-core-ios"),  
                .product(name: "AEPServices", package: "aepsdk-core-ios"),   
                .product(name: "AEPSignal", package: "aepsdk-core-ios"),   
                .product(name: "AEPUserProfile", package: "aepsdk-core-ios")
                .product(name: "AEPEdge", package: "aepsdk-edge-ios"),
                .product(name: "AEPEdgeConsent", package: "aepsdk-edgeconsent-ios"),
                .product(name: "AEPEdgeIdentity", package: "aepsdk-edgeidentity-ios"),
                .product(name: "AEPMessaging", package: "aepsdk-messaging-ios"),
                .product(name: "AEPOptimize", package: "aepsdk-optimize-ios"),
                .product(name: "AEPPlaces", package: "aepsdk-places-ios"),
                .product(name: "AEPUserProfile", package: "aepsdk-userprofile-ios")
            ]
        )
    ]
)