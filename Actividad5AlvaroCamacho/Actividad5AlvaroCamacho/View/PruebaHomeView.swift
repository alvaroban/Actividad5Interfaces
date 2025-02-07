//
//  PruebaHomeView.swift
//  Actividad5AlvaroCamacho
//
//  Created by Alvaro Camacho on 6/2/25.
//

import SwiftUI

struct PruebaHomeView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PruebaHomeView()
}
/*struct HomeView: View {
    @State private var searchMovie: String = ""
    @State private var wrapper: ApiNetwork.Model? = nil
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
                .onSubmit {
                    Task {
                        do{
                            let response = try await ApiNetwork().getMovieByQuery(query: searchMovie)
                            print (response)
                        } catch {
                            print("Error al buscar la película")
                        }
                      
                    }
                    
                }
                
            Text("Películas mejor valoradas")
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 30)
            
            /*NavigationView{
                ScrollView{
                    LazyVGrid(columns: columns, spacing: 16){
                        ForEach (wrapper) { item in
                            NavigationLink(destination: MovieDetailView(movie: item))
                            
                        }
                    }.padding()
                }
            }*/
        }
    }
}

#Preview {
    HomeView()
}*/
