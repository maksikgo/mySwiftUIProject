//
//  CategoryItem.swift
//  mySwiftUIProject
//
//  Created by Maksim Halubko on 8.02.22.
//

import SwiftUI

struct CategoryItem : View {
    
    var object: ProductsResponse
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10.0) {
            Image(object.image)
                .resizable()
                .renderingMode(.original)
                .cornerRadius(10)
                .frame(width: 170, height: 170)
        }.padding(.leading, 15)
    }
}

#if DEBUG
struct CategoryItem_Previews : PreviewProvider {
    static var previews: some View {
        CategoryItem(object: materialResponse[4])
    }
}
#endif
