import ComposableArchitecture

@Reducer
struct MainTabReducer {
  enum Tab { case home, search }

  @ObservableState
  struct State: Equatable {
    var currentTab = Tab.home
    var home = HomeReducer.State(count: 0)
    var search = SearchReducer.State(count: 0)
  }

  enum Action {
    case home(HomeReducer.Action)
    case search(SearchReducer.Action)
    case selectedTab(Tab)
  }

  var body: some Reducer<State, Action> {
    Scope(state: \.home, action: \.home) {
      HomeReducer()
    }
    Scope(state: \.search, action: \.search) {
      SearchReducer()
    }

    Reduce { state, action in
      switch action {
      case let .selectedTab(tab):
        state.currentTab = tab
        return .none
      default:
        return .none
      }
    }
  }
}
