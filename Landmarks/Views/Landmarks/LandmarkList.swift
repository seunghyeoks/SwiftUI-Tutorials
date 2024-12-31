//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 김승혁 on 12/31/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavoriteOnly: Bool = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmarkItem in
            (!showFavoriteOnly || landmarkItem.isFavorite)
        }
    }
    
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Favorite Only")
                }
                
                ForEach(filteredLandmarks) { landmarkItem in
                    NavigationLink {
                        LandmarkDetail(landmark: landmarkItem)
                    } label: {
                        LandmarkRow(landmark: landmarkItem)
                    }
                }
            }
            .animation(.default, value: filteredLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
