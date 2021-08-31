//
//  HeaderVIew.swift
//  HoneyMoon
//
//  Created by Massa Antonio on 31/08/21.
//

import SwiftUI

struct HeaderVIew: View {
	@Binding var showGuideView: Bool
	@Binding var showInfoView: Bool

    var body: some View {
		HStack {
			Button(action: {
			//	print(("Informations"))
				self.showInfoView.toggle()
			}) {
				Image(systemName: "info.circle")
					.font(.system(size: 24, weight: .regular))
			}
			.accentColor(.primary)
			.sheet(isPresented: $showInfoView, content: {
				InformationView()
			})

			Spacer()
			Image("logo-honeymoon-pink")
				.resizable()
				.scaledToFit()
				.frame(height: 28)
			Spacer()

			Button(action: {
				//print("Guide")
				self.showGuideView.toggle()
			}) {
				Image(systemName: "questionmark.circle")
					.font(.system(size: 24, weight: .regular))
					.accentColor(.primary)
					.sheet(isPresented: $showGuideView) {
						GuideView()
					}
			}
		}
		.padding()
    }
}

struct HeaderVIew_Previews: PreviewProvider {
	@State static var showGuide: Bool = false
	@State static var showInfo: Bool = false

    static var previews: some View {
		HeaderVIew(showGuideView: $showGuide, showInfoView: $showInfo)
			.previewLayout(.fixed(width: 375, height: 80))
    }
}
