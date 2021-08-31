//
//  ContentView.swift
//  HoneyMoon
//
//  Created by Massa Antonio on 31/08/21.
//

import SwiftUI

struct ContentView: View {
	@State var showAlert: Bool = false
	@State var showGuide: Bool = false
	@State var showInfo: Bool = false

    var body: some View {
		VStack {
			HeaderVIew(showGuideView: $showGuide, showInfoView: $showInfo)

			Spacer()
			CardView(honeymoon: honeymoonData[2])
				.padding()
			Spacer()

			FooterView(showBookingAlert: $showAlert)
		}
		.alert(isPresented: $showAlert) {
			Alert(title: Text("SUCCESS"), message: Text("Wishing a lavely and most precious of the times together for the amazing couple"), dismissButton: .default(Text("Happy Honeymoon!")))
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
