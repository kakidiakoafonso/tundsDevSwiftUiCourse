//
//  People.swift
//  tundsDevCourse
//
//  Created by Kakidiako Afonso on 12/12/22.
//

import SwiftUI

struct People: View {
    @StateObject var people : PeopleViewModel = .init()
    var body: some View {
        
        VStack{
            if people.isLoading {
                ProgressView()
                Text("Carregando")
            }
            else{
                Button{
                    people.fetchPeople()
                } label: {
                    Text("Clicar")
                }
            }
            
        }
    }
}

struct People_Previews: PreviewProvider {
    static var previews: some View {
        People()
    }
}
