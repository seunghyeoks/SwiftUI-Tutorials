//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 김승혁 on 12/31/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmarkItem in
                NavigationLink {
                    LandmarkDetail(landmark: landmarkItem)
                } label: {
                    LandmarkRow(landmark: landmarkItem)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
}
