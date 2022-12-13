//
//  main17.swift
//  tundsDevCourse
//
//  Created by Kakidiako Afonso on 13/12/22.
//

import SwiftUI

struct main17: View {
    @StateObject var purchaseModel = PurchaseViewModel()
    var body: some View {
        TabView{
            Purchase()
                .tabItem{
                    Image(systemName: "creditcard")
                        .font(.system(size: 50))
                }
            PurchaseStateView()
                .tabItem{
                    Image(systemName: "gear")
                        .font(.system(size: 50))
                }
        }
        .environmentObject(purchaseModel)
    }
}

struct main17_Previews: PreviewProvider {
    static var previews: some View {
        main17()
    }
}
