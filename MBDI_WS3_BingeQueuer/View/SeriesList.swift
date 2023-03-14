
import SwiftUI

struct SeriesList: View {
    @State var seriesDataList = seriesSourceList
    var body: some View {
        NavigationView {
            
            List(){
                ForEach(seriesDataList,id: \Series.id){
                    series in
                    NavigationLink(destination: SeriesDetail(series: series)) { BingeRow(series: series) }
                }
                .onDelete(perform: delete)
            }
            .toolbar {
                EditButton()
            }
        }
        
    }
    func delete(at offsets: IndexSet){
        seriesDataList.remove(atOffsets: offsets)
    }
}

struct SeriesList_Previews: PreviewProvider {
    static var previews: some View {
        SeriesList()
    }
}
