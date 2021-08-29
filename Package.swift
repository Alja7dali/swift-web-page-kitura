// swift-tools-version:5.3
import PackageDescription

let Swep:  Target.Dependency = .product(name: "Swep", package: "swift-web-page")

let package = Package(
  name: "swift-web-page-kitura",
  products: [
    .library(name: "SwepKituraSupport", targets: ["SwepKituraSupport"]),
    .executable(name: "SwepKituraSupportExample", targets: ["SwepKituraSupportExample"]),
  ],
  dependencies: [
    .package(url: "https://github.com/alja7dali/swift-web-page", from: "0.0.1"),
    .package(url: "https://github.com/IBM-Swift/Kitura", from: "2.9.1"),
  ],
  targets: [
    .target(name: "SwepKituraSupport", dependencies: [Swep, "Kitura"]),
    .target(name: "SwepKituraSupportExample", dependencies: [Swep, "Kitura", "SwepKituraSupport"]),
    .testTarget(name: "SwepKituraSupportTests", dependencies: ["SwepKituraSupport"]),
  ],
  swiftLanguageVersions: [
    .version("5"),
  ]
)
