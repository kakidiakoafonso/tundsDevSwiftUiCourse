//
//  PeopleViewModel.swift
//  tundsDevCourse
//
//  Created by Kakidiako Afonso on 12/12/22.
//

import Foundation


final  class PeopleViewModel : ObservableObject {
    @Published var isLoading : Bool = false
    @Published var people: [String] = []
    
    func fetchPeople() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
            self.isLoading = false
            self.people = ["Eduardo","Vicente","Kuanguluka"]
        })
    }
}
