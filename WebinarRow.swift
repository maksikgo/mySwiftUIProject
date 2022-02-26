//
//  WebinarRow.swift
//  mySwiftUIProject
//
//  Created by Maksim Halubko on 8.02.22.
//

import SwiftUI

struct WebinarRow : View {
    
    var categoryName: String
    var items: [ProductsResponse]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            
            ScrollView(showsHorizontalIndicator: false) {
                HStack(alignment: .center, spacing: 0) {
                    ForEach(self.items.identified(by: \.name)) { object in
                        NavigationButton(destination: DetailScreen(object: object)) {
                            WebinarItem(object: object)
                        }
                    }
                }
            }
            .frame(height: 210)
        }
    }
}

#if DEBUG
struct WebinarRow_Previews : PreviewProvider {
    static var previews: some View {
        WebinarRow(categoryName: "Webinars", items: Array(materialResponse.dropFirst(4)))
    }
}
#endif
