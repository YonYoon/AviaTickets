//
//  Offer.swift
//  AviaTickets
//
//  Created by Zhansen Zhalel on 04.06.2024.
//

import Foundation

struct Offer: Codable {
    let id: Int
    let title: String
    let town: String
    let price: Price
    
    struct Price: Codable {
        let value: Int
    }
}

struct OfferCollection: Codable {
    let offers: [Offer]
}
