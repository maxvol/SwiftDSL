  
// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "SwiftDSL",
    products: [
        .library(
            name: "SwiftDSL",
            targets: ["SwiftDSL"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiftDSL",
            dependencies: [],
            path: ".")
    ]
)
