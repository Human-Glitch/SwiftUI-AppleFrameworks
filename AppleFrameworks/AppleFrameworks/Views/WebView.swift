//
//  WebView.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/12/24.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable, Hashable {
	let url: URL
	
	func makeUIView(context: Context) -> WKWebView  {
		let request = URLRequest(url: url)
		
		let wkwebView = WKWebView()
		wkwebView.load(request)
		
		return wkwebView
	}
	
	func updateUIView(_ uiView: WKWebView, context: Context) {
		// Required implementation
	}
}

#Preview {
	WebView(url: URL(string: "https://apple.com")!)
}
