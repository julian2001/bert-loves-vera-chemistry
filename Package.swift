// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "RoBERTaModel",
    platforms: [
        .iOS(.v13), // Adjust based on the minimum iOS version you need
        .macOS(.v11) // Add more platforms as needed
    ],
    products: [
        // Products define the executables and libraries produced by a package.
        .library(
            name: "RoBERTaModel",
            targets: ["RoBERTaModel"]),
    ],
    dependencies: [
        // Dependencies specify other packages that your package depends on.
        .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0"),
        .package(url: "https://github.com/apple/swift-collections", from: "1.0.0"),
        .package(url: "https://github.com/huggingface/transformers", from: "4.0.0") // If using HuggingFace
    ],
    targets: [
        // Targets are the basic building blocks of a package.
        .target(
            name: "RoBERTaModel",
            dependencies: [
                .product(name: "Algorithms", package: "swift-algorithms"),
                .product(name: "Collections", package: "swift-collections")
            ],
            path: "Sources/RoBERTaModel"),
        .testTarget(
            name: "RoBERTaModelTests",
            dependencies: ["RoBERTaModel"],
            path: "Tests/RoBERTaModelTests")
    ]
)
