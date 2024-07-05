

import SwiftUI

struct ContentView: View {
    @State var Fruits : [String] = ["Mango","Banana","Apple","Watermelon","Grapes"]
    var body: some View {
        VStack{
            List{
                Section(header: Text("Fruiys")) {
                    ForEach(Fruits , id: \.self ){ fruit in
                        Text(fruit)
                    }
                    .onDelete(perform: delete)
                }
            }
        }
    }
    func delete (indexSet : IndexSet){
        Fruits.remove(atOffsets: indexSet)
    }
}

#Preview {
    ContentView()
}
