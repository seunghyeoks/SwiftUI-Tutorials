//
//  ContentView.swift
//  Landmarks
//
//  Created by 김승혁 on 12/31/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                }
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Described as one of the most beautiful places in the world, Turtle Rock is a natural landmark located in Joshua Tree National Park, California.")
            }
            .padding()
            
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
