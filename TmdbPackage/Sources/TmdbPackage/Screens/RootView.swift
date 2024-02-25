//
//  RootView.swift
//
//
//  Created by osushi on 2024/02/25.
//

import SwiftUI

import ComposableArchitecture

public struct RootView: View {
  public init() {}
  public var body: some View {
    MainTabView(store: .init(initialState: MainTabReducer.State(), reducer: { MainTabReducer() }))
  }
}
