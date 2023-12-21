//
//  ContentView.swift
//  MemoryLeakRepresentedShareSheet
//
//  Created by Wei Sun on 21/12/2023.
//

import SwiftUI

struct ContentView: View {

  @State private var image: UIImage?

  var body: some View {
    VStack(spacing: 8) {
      Image(systemName: "globe")
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text("Hello, world!")
      Button {
        Task {
          image = takeSnapshot()
        }
      } label: {
        HStack {
          Image(systemName: "square.and.arrow.up")
          Text("Share")
        }
      }
    }
    .padding()
    .sheet(item: $image) { image in
      RepresentedShareSheet(item: image)
        .presentationDetents([.medium, .large])
    }
  }

  @MainActor
  func takeSnapshot() -> UIImage? {
    let renderer = ImageRenderer(content: self)
    renderer.scale = 3
    return renderer.uiImage
  }
}

extension UIImage: Identifiable {
  public var id: Int {
    hash
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
