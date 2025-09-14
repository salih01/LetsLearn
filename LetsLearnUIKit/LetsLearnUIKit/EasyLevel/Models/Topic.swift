//
//  Topic.swift
//  LetsLearnUIKit
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 27.07.2025.
//

import UIKit

enum Screen {
    case structVsClass
    case memoryManagement
    case viewLifecycle
}

struct Topic {
    let title: String
    let screen: Screen
}

final class ScreenFactory {
    static func makeViewController(for screen: Screen) -> UIViewController {
        let storyboard = UIStoryboard(name: "EasyLevel", bundle: nil)

        switch screen {
        case .structVsClass:
            return storyboard.instantiateViewController(withIdentifier: "StructVsClassViewController")
        case .memoryManagement:
            return storyboard.instantiateViewController(withIdentifier: "StructVsClassViewController")
        case .viewLifecycle:
            return storyboard.instantiateViewController(withIdentifier: "StructVsClassViewController")
        }
    }
}
