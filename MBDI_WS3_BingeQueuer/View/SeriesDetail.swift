//
//  SeriesDetail.swift
//  MBDI_WS3_BingeQueuer
//
//  Created by Montijn Bennik on 14/03/2023.
//

import SwiftUI
import CoreLocation
struct SeriesDetail: View {
    var series: Series
   
    var body: some View {
        let season = String(series.seasons)
        ScrollView {
            CircleImage(image: Image(series.image))
            Text(series.title).bold(true)
            Text("Seasons: " + season)
            Text(series.description)
            MapView(coordinate: CLLocationCoordinate2DMake(series.latitude, series.longitude))
                .frame(height: 200)
        }.navigationTitle(series.title)
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct SeriesDetail_Previews: PreviewProvider {
    static var previews: some View {
        SeriesDetail(series: seriesSourceList[0])
    }
}
