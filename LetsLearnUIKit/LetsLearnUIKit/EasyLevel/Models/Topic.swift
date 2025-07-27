//
//  Topic.swift
//  LetsLearnUIKit
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 27.07.2025.
//

import UIKit

struct Topic {
    let title: String?
    let controller: UIViewController.Type
    
    init(title: String?, controller: UIViewController.Type) {
        self.title = title
        self.controller = controller
    }
}
