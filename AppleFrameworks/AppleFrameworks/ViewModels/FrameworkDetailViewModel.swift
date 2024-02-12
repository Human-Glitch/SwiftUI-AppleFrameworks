//
//  FrameworkDetailViewModel.swift
//  AppleFrameworks
//
//  Created by Kody Buss on 2/11/24.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject{
	var selectedFramework: Framework? {
		didSet{
			isShowingSafariView = true
		}
	}

	@Published var isShowingSafariView = false
}
