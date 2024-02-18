//
//  Framework.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import Foundation

struct Framework: Identifiable
{
	init(){
		self.name = ""
		self.imageName = ""
		self.urlString = ""
		self.description = ""
	}
	
	init(name: String, imageName: String, urlString: String, description: String) {
		self.name = name
		self.imageName = imageName
		self.urlString = urlString
		self.description = description
	}
	
	let id: UUID = UUID()
	let name: String
	let imageName: String
	let urlString: String
	let description: String
}

struct MockData {
	
	static let sampleFramework = 
		Framework(
			name: "ARKit",
			imageName: "arkit",
			urlString: "https://developer.apple.com/augmented-reality/arkit",
			description: "ARKit 6 introduces 4K video, so you can capture stunning high-resolution videos of AR experiences — perfect for professional video editing, film production, social media apps, and more. Video and capture capabilities are expanded with support for HDR video and high-resolution background image capture. ARKit 6 also brings Location Anchors to new cities, such as Montreal, Sydney, Singapore, and Tokyo, and it features improvements to Motion Capture.")
	
	static let frameworks = [
		Framework(
			name: "Accessibility",
			imageName: "accessibility",
			urlString: "https://developer.apple.com/documentation/accessibility",
			description: "Accessibility features help a wide range of people interact with their devices. For many, accessibility is a necessity. For others, it’s a practicality. For example, closed captions can be necessary for someone who is deaf or hard of hearing, but also useful for someone watching a video in a noisy environment.\n\nWhether you’re developing a new app, or updating an existing one, consider the needs of all the people who might use your app. People can personalize their devices by choosing which accessibility features give them the best user experience."),
		
		Framework(
			name: "ActivityKit",
			imageName: "activitykit",
			urlString: "https://developer.apple.com/documentation/activitykit",
			description: "With the ActivityKit framework, you can start a Live Activity to share live updates from your app in the Dynamic Island and on the Lock Screen. Especially for apps that push the limit of notifications to provide updated information, Live Activities can offer a richer, interactive and highly glanceable way for people to keep track of an event or activity over a couple of hours. For example, a sports app might start a Live Activity that makes live information available at a glance for the duration of a game."),
		
		Framework(
			name: "App Clips",
			imageName: "app-clip",
			urlString: "https://developer.apple.com/app-clips",
			description: "App Clips are a great way for users to quickly access and experience what your app has to offer. An App Clip is a small part of your app that’s discoverable at the moment it’s needed. App Clips are fast and lightweight so a user can open them quickly.\n\nWhether they're ordering take-out from a restaurant, renting a scooter, or setting up a new connected appliance for the first time, users will be able to start and finish an experience from your app in seconds. And when they’re done, you can offer the opportunity to download your full app from the App Store."),
		
		Framework(
			name: "AppKit",
			imageName: "appkit",
			urlString: "https://developer.apple.com/documentation/appkit",
			description: "AppKit contains the objects you need to build the user interface for a macOS app. In addition to drawing windows, buttons, panels, and text fields, it handles all the event management and interaction between your app, people, and macOS.\n\nAside from drawing and managing interactions, AppKit handles printing, animating, as well as creating documents with large amounts of data efficiently. The framework also contains built-in support for localization and accessibility to ensure that your app reaches as many people as possible."),
		
		Framework(
			name: "ARKit",
			imageName: "arkit",
			urlString: "https://developer.apple.com/augmented-reality/arkit",
			description: "ARKit 6 introduces 4K video, so you can capture stunning high-resolution videos of AR experiences — perfect for professional video editing, film production, social media apps, and more. Video and capture capabilities are expanded with support for HDR video and high-resolution background image capture. ARKit 6 also brings Location Anchors to new cities, such as Montreal, Sydney, Singapore, and Tokyo, and it features improvements to Motion Capture."),
		
		Framework(
			name: "AVFoundation",
			imageName: "avfoundation",
			urlString: "https://developer.apple.com/documentation/avfoundation",
			description: "AVFoundation combines several major technology areas that together encompass a wide range of tasks for inspecting, playing, capturing, and processing audiovisual media on Apple platforms."),
		
		Framework(
			name: "CarPlay",
			imageName: "carplay",
			urlString: "https://developer.apple.com/carplay",
			description: "A smarter, safer way to use your iPhone in the car, CarPlay takes the things you want to do with your iPhone while driving and puts them on your car’s built-in display.\n\nYou can get directions, make calls, send and receive messages, and listen to music, all while staying focused on the road."),
		
		Framework(
			name: "Catalyst",
			imageName: "catalyst",
			urlString: "https://developer.apple.com/mac-catalyst",
			description: "Native Mac apps built with Mac Catalyst can share code with your iPad apps, and you can add more features just for Mac. In macOS Big Sur, you can create even more powerful versions of your apps and take advantage of every pixel on the screen by running them at native Mac resolution.\n\nApps built with Mac Catalyst can now be fully controlled using just the keyboard, access more iOS frameworks, and take advantage of the all-new look of macOS Big Sur. There’s never been a better time to turn your iPad app into a powerful Mac app."),

		Framework(
			name: "ClassKit",
			imageName: "classkit",
			urlString: "https://developer.apple.com/classkit",
			description: "The many great learning apps available in the App Store are an integral part of the teaching and learning experience in schools. By adopting ClassKit, your app will work with Schoolwork, a powerful iPad app for teachers and students to help keep track of assignments and student progress.\n\nYou can help teachers discover assignable activities in your app, take students directly to the right activity with a single tap, and securely and privately share progress data with teachers to help them personalize instruction."),
		
		Framework(
			name: "CloudKit",
			imageName: "cloudkit",
			urlString: "https://developer.apple.com/icloud/cloudkit",
			description: "Store your app’s data in iCloud and keep everything up to date across devices and on the web. Featuring efficient syncing, as well as simple monitoring and management, it’s never been easier to build and grow your apps with CloudKit. Store private data securely in your users’ iCloud accounts for limitless scale as your user base grows, and get up to 1PB of storage for your app’s public data."),
		
		Framework(
			name: "Core ML",
			imageName: "coreml",
			urlString: "https://developer.apple.com/machine-learning",
			description: "Create intelligent features and enable new experiences for your apps by leveraging powerful on-device machine learning.\n\nLearn how to build, train, and deploy machine learning models into your iPhone, iPad, Apple Watch, and Mac apps."),
		
		Framework(
			name: "HealthKit",
			imageName: "healthkit",
			urlString: "https://developer.apple.com/health-fitness",
			description: "Integrate HealthKit into your health and fitness apps for iOS and watchOS to create a more seamless user experience.\n\nWhen a customer provides permission for your app to read and write health and activity data to their Health app, your app becomes a valuable data source and can deliver deeply informed health and fitness solutions."),
		
		Framework(
			name: "HomeKit",
			imageName: "homekit",
			urlString: "https://developer.apple.com/design/human-interface-guidelines/homekit/",
			description: "HomeKit lets people securely control connected accessories in their homes using Siri or the Home app on iPhone, iPad, Apple Watch, and Mac."),
		
		Framework(
			name: "Metal",
			imageName: "metal",
			urlString: "https://developer.apple.com/metal",
			description: "Metal provides near-direct access to the graphics processing unit (GPU), enabling you to maximize the graphics and compute potential of your apps on iOS, macOS, and tvOS.\n\nBuilding on an approachable, low-overhead architecture with precompiled GPU shaders, fine-grained resource control, and multithreading support, Metal further evolves support for GPU-driven command creation, simplifies working with the array of Metal-capable GPUs, and lets you tap into Pro power of Mac Pro and Pro Display XDR."),
		
		Framework(
			name: "PencilKit",
			imageName: "pencilkit",
			urlString: "https://developer.apple.com/documentation/pencilkit",
			description: "PencilKit makes it easy to incorporate hand-drawn content into your iPadOS or macOS apps. PencilKit provides a drawing environment for your iOS app that receives input from Apple Pencil or the user’s finger, and turns it into images you display in iPadOS, iOS, or macOS. The environment comes with tools for creating, erasing, and selecting lines."),
		
		Framework(
			name: "RealityKit",
			imageName: "realitykit",
			urlString: "https://developer.apple.com/documentation/realitykit",
			description: "RealityKit provides high-performance 3D simulation and rendering capabilities you can use to create visionOS apps or to create augmented reality (AR) apps for iOS, macOS, and tvOS. RealityKit is an AR-first 3D framework that leverages ARKit to seamlessly integrate virtual objects into the real world."),
		
		Framework(
			name: "SceneKit",
			imageName: "scenekit",
			urlString: "https://developer.apple.com/documentation/scenekit",
			description: "SceneKit combines a high-performance rendering engine with a descriptive API for import, manipulation, and rendering of 3D assets. Unlike lower-level APIs such as Metal and OpenGL that require you to implement in precise detail the rendering algorithms that display a scene, SceneKit requires only descriptions of your scene’s contents and the actions or animations you want it to perform."),
		
		Framework(
			name: "SF Symbols",
			imageName: "sf-symbols",
			urlString: "https://developer.apple.com/sf-symbols",
			description: "With over 5,000 symbols, SF Symbols is a library of iconography designed to integrate seamlessly with San Francisco, the system font for Apple platforms. Symbols come in nine weights and three scales, and automatically align with text. They can be exported and edited using vector graphics editing tools to create custom symbols with shared design characteristics and accessibility features. SF Symbols 5 introduces a collection of expressive animations, over 700 new symbols, and enhanced tools for custom symbols."),
		
		Framework(
			name: "SiriKit",
			imageName: "sirikit",
			urlString: "https://developer.apple.com/siri",
			description: "Siri is the world’s most popular intelligent assistant, and now has an all new compact design. With SiriKit and Shortcuts, your apps can help users get things done with just their voice, intelligent suggestions, or the Shortcuts app.\n\nYour apps can now also integrate with more platforms with Shortcuts on watchOS, SiriKit Music on HomePod, and SiriKit Media on Apple TV."),
		
		Framework(
			name: "SpriteKit",
			imageName: "spritekit",
			urlString: "https://developer.apple.com/spritekit",
			description: "The SpriteKit framework makes it easy to create high-performance, battery-efficient 2D games.\n\nWith support for custom OpenGL ES shaders and lighting, integration with SceneKit, and advanced new physics effects and animations, you can add force fields, detect collisions, and generate new lighting effects in your games."),
		
		Framework(
			name: "SwiftData",
			imageName: "swiftdata",
			urlString: "https://developer.apple.com/documentation/swiftdata",
			description: "Combining Core Data’s proven persistence technology and Swift’s modern concurrency features, SwiftData enables you to add persistence to your app quickly, with minimal code and no external dependencies. Using modern language features like macros, SwiftData enables you to write code that is fast, efficient, and safe, enabling you to describe the entire model layer (or object graph) for your app. The framework handles storing the underlying model data, and optionally, syncing that data across multiple devices."),
		
		Framework(
			name: "SwiftUI",
			imageName: "swiftui",
			urlString: "https://developer.apple.com/xcode/swiftui",
			description: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs.\n\nWith a declarative Swift syntax that’s easy to read and natural to write, SwiftUI works seamlessly with new Xcode design tools to keep your code and design perfectly in sync. Automatic support for Dynamic Type, Dark Mode, localization, and accessibility means your first line of SwiftUI code is already the most powerful UI code you’ve ever written."),
		
		Framework(
			name: "Test Flight",
			imageName: "test-flight",
			urlString: "https://developer.apple.com/testflight",
			description: "TestFlight makes it easy to invite users to test your apps and app clip experiences and collect valuable feedback before releasing your apps on the App Store.\n\nYou can invite up to 10,000 testers using just their email address or by sharing a public link."),
		
		Framework(
			name: "UIKit",
			imageName: "uikit",
			urlString: "https://developer.apple.com/documentation/uikit",
			description: "UIKit provides a variety of features for building apps, including components you can use to construct the core infrastructure of your iOS, iPadOS, or tvOS apps. The framework provides the window and view architecture for implementing your UI, the event-handling infrastructure for delivering Multi-Touch and other types of input to your app, and the main run loop for managing interactions between the user, the system, and your app.\n\nUIKit also includes support for animations, documents, drawing and printing, text management and display, search, app extensions, resource management, and getting information about the current device. You can also customize accessibility support, and localize your app’s interface for different languages, countries, or cultural regions."),
		
		Framework(
			name: "Wallet",
			imageName: "wallet",
			urlString: "https://developer.apple.com/wallet/get-started",
			description: "The Wallet app on iPhone, iPod touch, and Apple Watch allows users to easily manage payment cards, boarding passes, tickets, gift cards, and other passes.\n\nWallet is time and location enabled, so passes can be configured to display on the user’s device at the appropriate moment, like when the user reaches the airport or walks into a store.\n\nPasses can also be updated with push notifications so, if details change, you can notify the user and they can simply tap the notification to view the updated pass."),
		
		Framework(
			name: "WidgetKit",
			imageName: "widgetkit",
			urlString: "https://developer.apple.com/widgets",
			description: "Easily build widgets and make them available across iOS, iPadOS, and macOS using the WidgetKit framework and the new widget API for SwiftUI. Widgets now come in multiple sizes, and users can visit the new widget gallery to search, preview sizes, and place them anywhere on the Home screen to access important details at a glance.\n\nThey can also add Smart Stacks — sets of widgets that use on-device intelligence to surface the right widget at the right moment, based on factors like time, location, and activity.")
	]
}
