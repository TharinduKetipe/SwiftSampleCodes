//
//  NetworkManager.swift
//  Codable
//
//  Created by Tharindu Ketipearachchi on 2022-10-02.
//
import Foundation

final class NetworkManager {
    
    let session = URLSession.shared
    
    func getMedia() {
        let url = URL(string: "https://reqres.in/api/users")!
        let task = session.dataTask(with: url) { data, response, error in
            
            guard error == nil else {
                print ("error: \(error!)")
                return
            }
            
            guard let content = data else {
                print("No data")
                return
            }
            
            let jsonDecoder = JSONDecoder()
            
            /* Just add following line to JSONDecoder to convert all your snake_case response to camerCase without using CodingKeys enum inside your Codable Model
             */
            //jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
            
            do {
                let body = try jsonDecoder.decode(Response.self, from: content)
                print(body)
            } catch  {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}
