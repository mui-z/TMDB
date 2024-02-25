import ComposableArchitecture

@Reducer
struct SearchReducer {

  struct State: Eqauatable {
    var count: Int
  }

  enum Action {
    case increment
    case decrement
  }

  var body: some ReducerOf<Self> {
    Reduce { state, aciton in
      switch action {
        case .increment:
          state.count += 1
          return .none
        case .decrement:
          state.count -= 1
          return .none
      }
    }
  }
}

