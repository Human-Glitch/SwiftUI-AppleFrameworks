//
//  ContentView.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

struct FrameworkGridView: View {
	
	@StateObject var viewModel = FrameworkGridViewModel()
	
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
						FrameworkTitleView(framework: framework)
							.onTapGesture {
								viewModel.selectedFramework = framework
							}
					}
				}
				.navigationTitle("🍎 Frameworks")
				.sheet(isPresented: $viewModel.isShowingDetailView){
					FrameworkDetailView(
						framework: viewModel.selectedFramework ?? MockData.sampleFramework,
						isShowingDetailView: $viewModel.isShowingDetailView)
				}
			}
		}
    }
}

#Preview {
    FrameworkGridView()
		.preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
