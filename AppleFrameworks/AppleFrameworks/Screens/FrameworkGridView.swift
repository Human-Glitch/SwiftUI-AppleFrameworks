//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkGridView: View {
	let frameworks: [Framework] = MockData.frameworks
	
	let columns = [
		GridItem(.flexible()),
		GridItem(.flexible()),
		GridItem(.flexible())
	]
	
    var body: some View {
		NavigationStack {
			ScrollView{
				LazyVGrid(columns: columns) {
					ForEach(frameworks) { framework in
						NavigationLink(value: framework) {
							FrameworkTitleView(framework: framework)
						}
					}
				}
				.navigationTitle("🍎 Frameworks")
				.navigationDestination(for: Framework.self) { framework in
					FrameworkDetailView(framework: framework)
				}
			}
		}
    }
}

#Preview {
    FrameworkGridView()
		.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
