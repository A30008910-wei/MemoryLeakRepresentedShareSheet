@_private(sourceFile: "ContentView.swift") import MemoryLeakRepresentedShareSheet
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/A30008910agl.com.au/Source/MemoryLeakRepresentedShareSheet/MemoryLeakRepresentedShareSheet/MemoryLeakRepresentedShareSheet/ContentView.swift", line: 54)
    ContentView()
  
#sourceLocation()
    }
}

extension UIImage {
    @_dynamicReplacement(for: id) private var __preview__id: Int {
        #sourceLocation(file: "/Users/A30008910agl.com.au/Source/MemoryLeakRepresentedShareSheet/MemoryLeakRepresentedShareSheet/MemoryLeakRepresentedShareSheet/ContentView.swift", line: 48)
    hash
  
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: takeSnapshot()) @MainActor private func __preview__takeSnapshot() -> UIImage? {
        #sourceLocation(file: "/Users/A30008910agl.com.au/Source/MemoryLeakRepresentedShareSheet/MemoryLeakRepresentedShareSheet/MemoryLeakRepresentedShareSheet/ContentView.swift", line: 40)
    let renderer = ImageRenderer(content: self)
    renderer.scale = __designTimeInteger("#22479.[1].[2].[1].[0]", fallback: 3)
    return renderer.uiImage
  
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/A30008910agl.com.au/Source/MemoryLeakRepresentedShareSheet/MemoryLeakRepresentedShareSheet/MemoryLeakRepresentedShareSheet/ContentView.swift", line: 15)
    VStack(spacing: __designTimeInteger("#22479.[1].[1].property.[0].[0].arg[0].value", fallback: 8)) {
      Image(systemName: __designTimeString("#22479.[1].[1].property.[0].[0].arg[1].value.[0].arg[0].value", fallback: "globe"))
        .imageScale(.large)
        .foregroundColor(.accentColor)
      Text(__designTimeString("#22479.[1].[1].property.[0].[0].arg[1].value.[1].arg[0].value", fallback: "Hello, world!"))
      Button {
        Task {
          image = takeSnapshot()
        }
      } label: {
        HStack {
          Image(systemName: __designTimeString("#22479.[1].[1].property.[0].[0].arg[1].value.[2].arg[1].value.[0].arg[0].value.[0].arg[0].value", fallback: "square.and.arrow.up"))
          Text(__designTimeString("#22479.[1].[1].property.[0].[0].arg[1].value.[2].arg[1].value.[0].arg[0].value.[1].arg[0].value", fallback: "Share"))
        }
      }
    }
    .padding()
    .sheet(item: $image) { image in
      RepresentedShareSheet(item: image)
        .presentationDetents([.medium, .large])
    }
  
#sourceLocation()
    }
}

import struct MemoryLeakRepresentedShareSheet.ContentView
import struct MemoryLeakRepresentedShareSheet.ContentView_Previews

