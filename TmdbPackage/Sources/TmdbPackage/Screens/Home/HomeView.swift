import SwiftUI
import ComposableArchitecture

struct HomeView: View {
  @ObservedObject var viewStore: ViewStoreOf<HomeReducer>

  init(store: StoreOf<HomeReducer>) {
    self.viewStore = ViewStoreOf<HomeReducer>(store, observe: { $0 })
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

