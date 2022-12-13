//
//  PurchaseViewModel.swift
//  tundsDevCourse
//
//  Created by Kakidiako Afonso on 13/12/22.
//

import Foundation

final class PurchaseViewModel : ObservableObject {
    @Published var hasPurchase: Bool = false
    @Published var isLoading: Bool = false
    
    func purchase () {
    isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now()+1.3, execute: {
            self.hasPurchase = true
            self.isLoading = false
        })
    }
}
