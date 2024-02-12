//
//  FrameworkCardView.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkDetailView: View {
	var framework: Framework
	@Binding var isShowingDetailView: Bool
	
	var body: some View {
		VStack(alignment: .center, spacing: 20) {
			HStack {
				Spacer()
				Button{
					isShowingDetailView = false
				} label: {
					Image(systemName: "xmark")
						.foregroundColor(.primary)
						.imageScale(.large)
						.frame(width: 44, height: 44)
				}
			}
			
			Spacer()
			
			FrameworkTitleView(framework: framework)
			
			Text(framework.description)
				.font(.body)
				.padding()
			
			Spacer()
			
			FrameworkButton(title: "Learn More")
		}
		.frame(minWidth: 400, maxWidth: 600, minHeight: 600, maxHeight: 800, alignment: .center)
		.padding()
	}
}

#Preview {
	FrameworkDetailView(
		framework: MockData.sampleFramework,
		isShowingDetailView: .constant(true))
	.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
