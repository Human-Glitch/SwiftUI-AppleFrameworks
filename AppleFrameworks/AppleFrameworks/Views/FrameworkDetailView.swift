//
//  FrameworkCardView.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkDetailView: View {
	var framework: Framework
	
	var body: some View {
		VStack(alignment: .center, spacing: 10) {
			FrameworkTitleView(framework: framework)
			
			Text(framework.description)
				.font(.body)
				.padding(30)
			
			Spacer()
			
			FrameworkButton(
				title: "Learn More",
				urlString: framework.urlString
			)
		}
		.frame(minWidth: 400, maxWidth: 600, minHeight: 600, maxHeight: 800, alignment: .center)
		.padding()
	}
}

#Preview {
	FrameworkDetailView(
		framework: MockData.sampleFramework)
	.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
