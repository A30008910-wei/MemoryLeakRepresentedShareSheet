//
//  RepresentedShareSheet.swift
//  MemoryLeakRepresentedShareSheet
//
//  Created by Wei Sun on 21/12/2023.
//

import Foundation
import SwiftUI
import UIKit

struct RepresentedShareSheet: UIViewControllerRepresentable {

  var item: Any

  func makeUIViewController(context: Context) -> some UIViewController {
    let shareSheet = UIActivityViewController(activityItems: [item], applicationActivities: nil)
    shareSheet.completionWithItemsHandler = { type, completed, items, error in
      print(type)
      print(completed)
      print(items)
      print(error?.localizedDescription)
    }
    return shareSheet
  }

  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    // Does nothing
  }
}
