//
//  HomeViewModel.swift
//  Actividad5AlvaroCamacho
//
//  Created by Alvaro Camacho on 6/2/25.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var movies: [ApiNetwork.Movie] = []
    
    
    init(){
        fetchData()
    }
    
    func fetchData(){
        print("fetching data...")
        
        guard let url = URL(string:"https://api.themoviedb.org/3/movie/top_rated?api_key=947267acb6ef39242499e2c6fc835844&language=es-ES&page=1")
        else {
            print("Error: cannot create URL")
            return
        }
        
        URLSession.shared.dataTask(with: url){data,_,_ in
            guard let data = data else {return}
            print("✅ JSON recibido:", String(data: data, encoding: .utf8) ?? "No se pudo convertir el JSON")
            do{
                
                let json = try JSONDecoder().decode([ApiNetwork.Movie].self, from: data)
                print (json.response)
                DispatchQueue.main.async{
                    self.movies = json
                    print (self.movies)
                    
                }
            }catch let error as NSError{
                print("Error en la lectura", error.localizedDescription)
            }
            
        }.resume()
    }
   
}
