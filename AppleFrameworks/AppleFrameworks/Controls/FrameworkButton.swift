//
//  LearnMoreButton.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkButton: View {
	var title: String
	
    var body: some View {
		Button(action: {
			
		}, label: {
			Text(title)
				.font(.title2)
				.fontWeight(.semibold)
		})
		.frame(width: 250, height: 30)
		.padding()
		.background(.red)
		.foregroundStyle(.white)
		.clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
	FrameworkButton(title: "Test Button")
}
