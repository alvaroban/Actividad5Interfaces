//
//  Modelo.swift
//  Actividad5AlvaroCamacho
//
//  Created by Alvaro Camacho on 4/2/25.
//

import Foundation

class ApiNetwork{
    
    struct Model: Codable {
        let page: Int
        let results: [Movie]
    }
    
    struct Movie: Codable, Identifiable{
        let genre_ids: [Int]
        let id: Int
        let overview: String
        let poster_path: String
        let release_date: String
        let title: String
        let vote_average: Double
    }
    
   /* func getMovieByQuery(query: String) async throws -> Model{
        let url = URL(string:"https://api.themoviedb.org/3/movie/top_rated?api_key=947267acb6ef39242499e2c6fc835844&language=es-ES&query=\(query)")!
    
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let movieData = try JSONDecoder().decode(Model.self, from: data)
        return movieData
    }*/
}
