//
//  OfferCollectionFetcher.swift
//  AviaTickets
//
//  Created by Zhansen Zhalel on 04.06.2024.
//

import Foundation

class OfferCollectionFetcher: ObservableObject {
    @Published var offers = [Offer]()
    
    let urlString = "https://run.mocky.io/v3/214a1713-bac0-4853-907c-a1dfc3cd05fd"
    
    enum FetchError: Error {
        case badRequest
        case badJSON
    }
    
    func fetchData() async throws {
        guard let url = URL(string: urlString) else { return }
        
        do {
            let (data, response) = try await URLSession.shared.data(from: url)
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else { throw FetchError.badRequest }
            offers = try JSONDecoder().decode(OfferCollection.self, from: data).offers
        } catch {
            print(error)
        }
    }
}
