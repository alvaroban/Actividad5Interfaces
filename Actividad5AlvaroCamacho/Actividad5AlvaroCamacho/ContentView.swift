//
//  ContentView.swift
//  Actividad5AlvaroCamacho
//
//  Created by Alvaro Camacho on 3/2/25.
//

import SwiftUI

struct ContentView: View {
    @State private var jsonData = HomeViewModel()
    @State private var searchMovie: String = ""
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        VStack{
            HStack{
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50, height:50)
                Text("Movies")
                    .font(.largeTitle)
                    .bold()
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:50, height:50)
            }
            TextField("Buscar película", text: $searchMovie)
                .frame(width: 350, height: 50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .cornerRadius(10)
                .padding(.bottom, 30)
            
            Text("Películas mejor valoradas")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            List(jsonData.movies, id:\.id){ item in
                VStack(alignment: .leading){
                    Text(item.title)
                        .font(.headline)
                    Text(item.overview)
                        .font(.caption)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
