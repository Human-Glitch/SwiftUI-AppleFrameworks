//
//  LearnMoreButton.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkButton: View {
	var title: String
	@Binding var isShowingSafariView: Bool
	var urlString: String
	
    var body: some View {
		Button(action: {
			isShowingSafariView = true
		}, label: {
			Label(title, systemImage: "book.fill")
		})
		.sheet(isPresented: $isShowingSafariView){
			WebView(url: URL(string: urlString)!)
		}
		.buttonStyle(.bordered)
		.controlSize(.large)
		.tint(.red)
    }
}

#Preview {
	FrameworkButton(
		title: "Test Button",
		isShowingSafariView: .constant(false),
		urlString: "https://apple.com")
}
