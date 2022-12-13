//
//  Purchase.swift
//  tundsDevCourse
//
//  Created by Kakidiako Afonso on 13/12/22.
//

import SwiftUI

struct Purchase: View {
    @EnvironmentObject var mv: PurchaseViewModel
    var body: some View {
        VStack{
            if(mv.isLoading)
            {
                ProgressView()
            }
            Button{
                mv.purchase()
            } label: {
                Text("Purchase me")
            }
        }
    }
}

struct Purchase_Previews: PreviewProvider {
    static var previews: some View {
        Purchase()
            .environmentObject(PurchaseViewModel())
    }
}
