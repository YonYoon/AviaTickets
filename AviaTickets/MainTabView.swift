//
//  MainTabView.swift
//  AviaTickets
//
//  Created by Zhansen Zhalel on 04.06.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            TicketsSearchView()
                .tabItem {
                    Label("Авиабилеты", systemImage: "airplane")
                }
        }
    }
}

#Preview {
    MainTabView()
}
