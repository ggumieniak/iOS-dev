// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Formatter",
		platforms: [.macOS(.v11)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Formatter",
            targets: ["Formatter"]),
    ],
    dependencies: [
			.package(
				name: "swift-format",
				url: "https://github.com/apple/swift-format",
				branch: "swift-5.5-branch"
			)
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Formatter",
            dependencies: []),
        .testTarget(
            name: "FormatterTests",
            dependencies: ["Formatter"]),
    ]
)