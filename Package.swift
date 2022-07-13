// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NiftyPlugins",
    products: [
        .library(
            name: "NiftyPlugins",
            targets: ["NiftyPlugins"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "NiftyPlugins",
            dependencies: []),
        .plugin(
            name: "SortImports",
            capability: .command(
                intent: .custom(
                    verb: "sort-imports",
                    description: "Sort imports alphabetically."
                )
            )
        ),
        .testTarget(
            name: "NiftyPluginsTests",
            dependencies: ["NiftyPlugins"]),
    ]
)
