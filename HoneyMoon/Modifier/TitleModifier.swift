//
//  TitleModifier.swift
//  HoneyMoon
//
//  Created by Massa Antonio on 31/08/21.
//

import SwiftUI

struct TitleModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.font(.largeTitle)
			.foregroundColor(.pink)
	}
}
