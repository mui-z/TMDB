import ComposableArchitecture
import SwiftUI

struct HomeView: View {
  @ObservedObject var viewStore: ViewStoreOf<HomeReducer>

  init(store: StoreOf<HomeReducer>) {
    viewStore = ViewStoreOf<HomeReducer>(store, observe: { $0 })
  }

  var body: some View {
    ScrollView {
      VStack(spacing: 50) {
        trendingView
        nowPlayingView
        upcomingView
      }
    }
    .padding()
  }

  var trendingView: some View {
    VStack {
      Text("Today's Trending")
        .font(.title)
        .fontWeight(.bold)
        .frame(maxWidth: .infinity, alignment: .leading)

      ScrollView(.horizontal) {
        HStack(spacing: 20) {
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.red)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.red)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.red)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.red)
            .frame(width: 100, height: 180)
        }
      }
    }
  }

  var nowPlayingView: some View {
    VStack {
      HStack {
        Text("Now Playing")
          .font(.title)
          .fontWeight(.bold)
          .frame(maxWidth: .infinity, alignment: .leading)
      }

      ScrollView(.horizontal) {
        HStack(spacing: 20) {
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.blue)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.blue)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.blue)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.blue)
            .frame(width: 100, height: 180)
        }
      }
    }
  }

  var upcomingView: some View {
    VStack {
      HStack {
        Text("Upcoming")
          .font(.title)
          .fontWeight(.bold)
          .frame(maxWidth: .infinity, alignment: .leading)
      }

      ScrollView(.horizontal) {
        HStack(spacing: 20) {
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.green)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.green)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.green)
            .frame(width: 100, height: 180)
          RoundedRectangle(cornerRadius: 5.0, style: .continuous)
            .fill(Color.green)
            .frame(width: 100, height: 180)
        }
      }
    }
  }
}
