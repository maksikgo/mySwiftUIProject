//
//  CategoryHome.swift
//  mySwiftUIProject
//
//  Created by Maksim Halubko on 8.02.22.
//

import SwiftUI

struct CategoryHome: View {
    
    var categories: [String: [ProductsResponse]] {
        .init(
            grouping: materialResponse,
            by: { $0.category.rawValue }
        )
    }
    
    var body: some View {
        NavigationView {
            
            List {
                Cell(user: swiftbook)
                    .listRowInsets(EdgeInsets())
                ForEach(self.categories.keys.sorted().identified(by: \.self)) { key in
                    
                    if key == "Courses" {
                        CategoryRow(categoryName: key, items: self.categories[key]!)
                    } else if key == "Webinars" {
                        WebinarRow(categoryName: key, items: self.categories[key]!)
                    }
                }
                .listRowInsets(EdgeInsets())
                NavigationButton(destination: FriendsList()) {
                    Text("Наши преподаватели")
                }
            }
            .navigationBarTitle(Text("Homepage"))
            
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        CategoryHome()
    }
}
#endif
