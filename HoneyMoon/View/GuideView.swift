//
//  GuideView.swift
//  HoneyMoon
//
//  Created by Massa Antonio on 31/08/21.
//

import SwiftUI

struct GuideView: View {
	@Environment(\.presentationMode) var presentationMode

    var body: some View {
		ScrollView(.vertical, showsIndicators: false) {
			VStack(alignment: .center, spacing: 20) {
				HeaderComponent()

				Spacer(minLength: 10)

				Text("Get Started")
					.fontWeight(.black)
					.modifier(TitleModifier())

				Text("Discover and pick the perfect destination for you and your half.")
					.lineLimit(nil)
					.multilineTextAlignment(.center)

				Spacer(minLength: 10)

				VStack(alignment: .leading, spacing: 25) {
					GuideComponent(title: "Like", subtitle: "Swipe Right", description: "Do you like this destination? Swipe right, will be saved in favorites", icon: "heart.circle")
					GuideComponent(title: "Dismiss", subtitle: "Swipe Left", description: "Do you want to skip this place? Simply swipe left", icon: "xmark.circle")
					GuideComponent(title: "Book", subtitle: "Tap the button", description: "Our selection of honeymook in perfect to embark your new life together", icon: "checkmark.circle")
				}
				Spacer(minLength: 10)

				Button(action: {
					// print("Button tapped")
					self.presentationMode.wrappedValue.dismiss()
				}) {
					Text("Continue".uppercased())
						.modifier(ButtonModifier())
				}
			}
			.frame(minWidth: 0, maxWidth: .infinity)
			.padding(.top, 15)
			.padding(.bottom, 25)
			.padding(.horizontal, 25)
		}
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
