import ProjectDescription

let nameAttribute: Template.Attribute = .required("name")
let bundleIdAttribute: Template.Attribute = .required("bundle_id")
let authorAttribute: Template.Attribute = .required("author")

// MARK: - Files
let projectItems: [Template.Item] = [
    .file(path: "\(nameAttribute)/Workspace.swift",        templatePath: "Workspace.stencil"),
    .file(path: "\(nameAttribute)/Project.swift",          templatePath: "Project.stencil"),
    .file(path: "\(nameAttribute)/CLAUDE.md",              templatePath: "CLAUDE.md.stencil"),
]

let appItems: [Template.Item] = [
    .file(path: "\(nameAttribute)/Application/\(nameAttribute)App.swift",                                       templatePath: "AppEntry.stencil"),
    .file(path: "\(nameAttribute)/Application/AppDelegate.swift",                                               templatePath: "AppDelegate.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Localization/Localization.swift",                          templatePath: "System/Localization/Localization.stencil"),
    .file(path: "\(nameAttribute)/Application/System/ActionDispatching/ActionDispatcher.swift",                 templatePath: "System/ActionDispatching/ActionDispatcher.stencil"),
    .file(path: "\(nameAttribute)/Application/System/ActionDispatching/ActionDispatcher+Environment.swift",     templatePath: "System/ActionDispatching/ActionDispatcher+Environment.stencil"),
    .file(path: "\(nameAttribute)/Application/System/DI/DIContainer.swift",                                     templatePath: "System/DI/DIContainer.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Logging/AppleLoggerAdapter.swift",                         templatePath: "System/Logging/AppleLoggerAdapter.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Logging/Logger.swift",                                     templatePath: "System/Logging/Logger.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Logging/LoggerInterface.swift",                            templatePath: "System/Logging/LoggerInterface.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Persistence/Persistence.swift",                            templatePath: "System/Persistence/Persistence.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/AppStore/AppAction.swift",                           templatePath: "System/Store/AppStore/AppAction.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/AppStore/AppState.swift",                            templatePath: "System/Store/AppStore/AppState.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/AppStore/AppStore.swift",                            templatePath: "System/Store/AppStore/AppStore.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/AppStore/AppActionHandler.swift",                    templatePath: "System/Store/AppStore/AppActionHandler.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/AppStore/LogState.swift",                            templatePath: "System/Store/AppStore/LogState.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/AppStore/LoggingAction.swift",                       templatePath: "System/Store/AppStore/LoggingAction.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/AppStore/LoggingHandler.swift",                      templatePath: "System/Store/AppStore/LoggingHandler.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/BaseStore.swift",                                    templatePath: "System/Store/BaseStore.stencil"),
    .file(path: "\(nameAttribute)/Application/System/Store/BaseStore+Extensions.swift",                         templatePath: "System/Store/BaseStore+Extensions.stencil"),
    .file(path: "\(nameAttribute)/Application/UI/RootView.swift",                                               templatePath: "UI/RootView.stencil"),
    .file(path: "\(nameAttribute)/Application/UI/RootViewModel.swift",                                          templatePath: "UI/RootViewModel.stencil"),
]

let testItems: [Template.Item] = [
    .file(path: "\(nameAttribute)/Application/Tests/UITests/\(nameAttribute)UITests.swift",            templatePath: "Tests/UITests/UITests.stencil"),
    .file(path: "\(nameAttribute)/Application/Tests/UITests/\(nameAttribute)UITestsLaunchTests.swift", templatePath: "Tests/UITests/UITestsLaunchTests.stencil"),
    .file(path: "\(nameAttribute)/Application/Tests/UnitTests/\(nameAttribute)Tests.swift",            templatePath: "Tests/UnitTests/UnitTests.stencil"),
]

let resourceItems: [Template.Item] = [
    .file(path: "\(nameAttribute)/Application/Resources/Assets.xcassets/Contents.json",                    templatePath: "Resources/Assets.stencil"),
    .file(path: "\(nameAttribute)/Application/Resources/Assets.xcassets/AppIcon.appiconset/Contents.json", templatePath: "Resources/AppIcon.stencil"),
    .file(path: "\(nameAttribute)/Application/Resources/en.lproj/Localizable.strings",                     templatePath: "Resources/StringsEN.stencil"),
    .file(path: "\(nameAttribute)/Application/Resources/hu.lproj/Localizable.strings",                     templatePath: "Resources/StringsHU.stencil"),
]

// MARK: - Template

let template = Template(
    description: "iOS Skeleton Template",
    attributes: [
        nameAttribute,
        bundleIdAttribute,
        authorAttribute,
        .optional("date", default: "{{ date }}")
    ],
    items: projectItems + appItems + testItems + resourceItems
)
