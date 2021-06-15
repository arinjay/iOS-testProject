//
//  Service.swift
//  iOSOnboardingProject
//
//  Created by Arinjay Sharma on 15/06/21.
//

import Foundation

class Router {
    static let shared = Router()
    
    func getResults(listCount: Int = 10, completed: @escaping (Result<UserAPIData, ErrorMessage>) -> Void){
        
        let urlString = "https://randomuser.me/api/?results=\(listCount)"
        guard let url = URL(string: urlString) else {return}
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error {
                completed(.failure(.invalidData))
                return
            }
            
            guard let response = response as? HTTPURLResponse,
                  response.statusCode == 200 else {
                completed(.failure(.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                let results = try decoder.decode(UserAPIData.self, from: data)
                completed(.success(results))
            } catch {
                completed(.failure(.invalidData))
            }
        }
        task.resume()
    }
}
