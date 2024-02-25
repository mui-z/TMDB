//
//  MainTabView.swift
//
//
//  Created by osushi on 2024/02/16.
//

import ComposableArchitecture
import SwiftUI

struct MainTabView: View {
  @Bindable var store: StoreOf<MainTabReducer>

  var body: some View {
    TabView(selection: $store.currentTab.sending(\.selectedTab)) {
      NavigationStack {
        HomeView(store: store.scope(state: \.home, action: \.home))
      }
      .tag(MainTabReducer.Tab.home)
      .tabItem {
        Image(systemName: "house")
      }

      NavigationStack {
        SearchView(store: store.scope(state: \.settings, action: \.settings))
      }
      .tag(MainTabReducer.Tab.search)
      .tabItem {
        Image(systemName: "gearshape")
      }
    }
  }
}
