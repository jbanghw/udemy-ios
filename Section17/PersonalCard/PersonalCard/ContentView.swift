//
//  ContentView.swift
//  PersonalCard
//
//  Created by James Bang on 2023-09-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("django")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("James Bang")
                    .font(Font.custom("Pacifico-Regular", fixedSize: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(text: "+1 123 456 7890", imageName: "phone.fill")
                InfoView(text: "james@email.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

