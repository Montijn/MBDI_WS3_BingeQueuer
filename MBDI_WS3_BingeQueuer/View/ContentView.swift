
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Group{
                BingeRow(series: seriesSourceList[0])
                BingeRow(series: seriesSourceList[1])
                BingeRow(series: seriesSourceList[2])
                BingeRow(series: seriesSourceList[3])
            }.previewLayout(.fixed(width: 300, height: 70))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
