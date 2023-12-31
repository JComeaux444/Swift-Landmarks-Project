//
//  LandmarkDetail.swift
//  lecture project
//
//  Created by Joseph Comeaux on 6/24/22.
//

import SwiftUI
import MapKit

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {

            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 200)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

          VStack(alignment: .leading) {
              
              HStack {
                  Text(landmark.name)
                      .font(.title)
                  FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
              }

              HStack {
                  Text(landmark.park)
                 Spacer()
                  Text(landmark.state)
              }
              .font(.subheadline)
              .foregroundColor(.secondary)

              Divider()
                  .foregroundColor(.blue)

              Text("About \(landmark.name)")
                  .font(.title2)

              Text(landmark.description)
          }
          .padding()
        }
        .navigationTitle(landmark.name)
        //.ignoresSafeArea(edges: .top)
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
