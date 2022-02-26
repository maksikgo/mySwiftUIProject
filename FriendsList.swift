//
//  FriendsList.swift
//  mySwiftUIProject
//
//  Created by Maksim Halubko on 8.02.22.
//

import SwiftUI

struct FriendsList : View {
    var body: some View {
        NavigationView {
            List(userResponse) { user in
                Cell(user: user)
            }
            .navigationBarTitle(Text("Teachers"))
        }
    }
}

#if DEBUG
struct FriendsList_Previews : PreviewProvider {
    static var previews: some View {
        FriendsList()
    }
}
#endif
