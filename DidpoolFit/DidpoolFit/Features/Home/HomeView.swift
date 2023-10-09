//
//  HomeView.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin Serrano on 9/10/23.
//

import SwiftUI
import ComposableArchitecture

struct HomeView: View {
    let store: StoreOf<HomeReducer>
    var body: some View {
        VStack {
            Text("Hello, World! Home View")
            NavigationLink("Go to login", state: AppPathReducer.State.auth(AuthReducer.State()))
        }
    }
}

