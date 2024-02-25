import SwiftUI
import ComposableArchitecture

struct SearchView: View {
  @ObservedObject var viewStore: ViewStoreOf<SearchReducer>

  init(store: StoreOf<SearchReducer>) {
    self.viewStore = ViewStoreOf<SearchReducer>(store, observe: { $0 })
  }

  var body: some View {
    VStack {
      Text(viewStore.count.description)
      HStack {
        Button(action: {
            viewStore.send(.decrement)
        }, label: {
            Text("-")
        })
        Button(action: {
            viewStore.send(.increment)
        }, label: {
            Text("+")
        })
      }
    }
  }
}

