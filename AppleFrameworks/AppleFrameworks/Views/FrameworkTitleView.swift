//
//  GridItemView.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkTitleView: View {
	@Binding var framework: Framework
	
    var body: some View {
		VStack{
			Image($framework.wrappedValue.imageName)
				.resizable()
				.scaledToFit()
				.frame(width: 100, height: 100, alignment: .center)
			
			Text($framework.wrappedValue.name)
				.font(.title2)
				.fontWeight(.semibold)
				.scaledToFit()
				.minimumScaleFactor(0.6)
		}
		.padding()
    }
}

#Preview {
	FrameworkTitleView(framework: .constant(Framework(
		name: "ARKit",
		imageName: "arkit",
		urlString: "",
		description: ""
	)))
}