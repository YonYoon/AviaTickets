//
//  AviaTicketsApp.swift
//  AviaTickets
//
//  Created by Zhansen Zhalel on 04.06.2024.
//

import SwiftUI

@main
struct AviaTicketsApp: App {
    @StateObject private var fetcher = OfferCollectionFetcher()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(fetcher)
        }
    }
}
