//
//  SymbolModifier.swift
//  HoneyMoon
//
//  Created by Massa Antonio on 01/09/21.
//

import SwiftUI

struct MarkSymbolModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.foregroundColor(.white)
			.font(.system(size: 128))
			.shadow(color: Color(red: 0, green: 0, blue: 0), radius: 12, x: 0, y: 0)
	}
}

struct HeartSymbolModifier: ViewModifier {
	func body(content: Content) -> some View {
		content
			.foregroundColor(.red)
			.font(.system(size: 128))
			.shadow(color: Color(red: 0, green: 0, blue: 0), radius: 12, x: 0, y: 0)
	}
}
