// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "BarcodeGenerator",
    platforms: [.iOS(.v8)],
    products: [
        .library(name: "BarcodeGenerator", targets: ["BarcodeGenerator"]),
    ],
    targets: [
        .target(
            name: "BarcodeGenerator",
            path: "Source"
        ),
    ]
)
