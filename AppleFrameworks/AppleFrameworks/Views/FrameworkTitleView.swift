//
//  GridItemView.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkTitleView: View {
	var framework: Framework
	
    var body: some View {
		VStack{
			Image(framework.imageName)
				.resizable()
				.scaledToFit()
				.frame(width: 100, height: 100, alignment: .center)
			
			Text(framework.name)
				.font(.title2)
				.fontWeight(.semibold)
				.scaledToFit()
				.minimumScaleFactor(0.6)
		}
		.padding()
    }
}

#Preview {
	FrameworkTitleView(framework: Framework(
		name: "ARKit",
		imageName: "arkit",
		urlString: "",
		description: ""
	))
}
