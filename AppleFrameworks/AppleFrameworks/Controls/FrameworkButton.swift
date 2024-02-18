//
//  LearnMoreButton.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkButton: View {
	var title: String
	var urlString: String
	
	var body: some View {
		Button(
			action: {},
			label: {
				NavigationLink(value: WebView(url: URL(string: urlString)!)){
					Label(title, systemImage: "book.fill")
				}
			}
		)
		.navigationTitle(title)
		.navigationDestination(for: WebView.self) { webView in
			webView
		}
		.buttonStyle(.bordered)
		.controlSize(.large)
		.tint(.red)
	}
}

#Preview {
	FrameworkButton(
		title: "Test Button",
		urlString: "https://apple.com")
}
