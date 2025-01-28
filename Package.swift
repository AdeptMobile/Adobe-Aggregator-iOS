// swift-tools-version:5.9
//.package(url: "https://github.com/adobe/aepsdk-assurance-ios.git", exact: "5.0.1"),
import PackageDescription

let package = Package(
    name: "Adode_AEP_SDK",
    dependencies: [
        .package(url: "https://github.com/adobe/aepsdk-core-ios.git", exact: "5.3.2")
    ],
    targets: [
        .target(
            name: "Adode_AEP_SDK", 
            dependencies: [
                //.target(name: "AEP_SDK"),
                .product(name: "AEPCore", package: "aepsdk-core-ios"),
            ]
            //path: "Sources/mylib"
        ),
    ]
)
