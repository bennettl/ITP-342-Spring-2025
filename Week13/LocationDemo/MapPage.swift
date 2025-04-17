//
//  MapPage.swift
//  LocationDemo
//
//  Created by Bennett Lee on 4/7/25.
//

import SwiftUI
import MapKit

// "233 Main St, Los Angeles"

// geocoding is availabe in MapKit

// to display you need lat / lng

struct MapPage: View {
    let coordinates = CLLocationCoordinate2D(
           latitude: 34.03937726897788,
           longitude: -118.2327104061501
       )

    let coordinates2 = CLLocationCoordinate2D(latitude: 34.04269889512816, longitude: -118.23556876388042)

    var body: some View {
        NavigationStack {
            Map(){
                Marker("Urth Cafe", coordinate: coordinates2)
                    .tint(.teal)
                // Marker("Blue Bottle", systemImage: "cup.and.saucer", coordinate: coordinates)

                Annotation("Blue Bottle", coordinate: coordinates) {
                    NavigationLink {
                        Text("Blue Bottle Detail Page")
                    } label: {
                        Circle()
                            .fill(Color.teal)
                            .frame(height: 300)
                    }
                }
            }
        }
    }
}

#Preview {
    MapPage()
}
