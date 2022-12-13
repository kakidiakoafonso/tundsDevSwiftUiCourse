//
//  PurchaseStateView.swift
//  tundsDevCourse
//
//  Created by Kakidiako Afonso on 13/12/22.
//

import SwiftUI

struct PurchaseStateView: View {
    @EnvironmentObject var mv: PurchaseViewModel
    
    var body: some View {
        VStack{
            Image(systemName:mv.hasPurchase ? "lock.open":"lock")
                .font(.system(size: 150,weight: .bold))
                .symbolVariant(.fill)
            Text("O usuario \(mv.hasPurchase ? "e":"nao e") premium")
        }
    }
}

struct PurchaseStateView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseStateView()
            .environmentObject(PurchaseViewModel())
    }
}
