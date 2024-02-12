//
//  FrameworkGridViewModel.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject{
	var selectedFramework: Framework? {
		didSet{
			isShowingDetailView = true
		}
	}

	@Published var isShowingDetailView = false
}
