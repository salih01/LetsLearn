//
//  PropertyWrapper.swift
//  LetsLearnSwiftUI
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 19.07.2025.
//

import SwiftUI

struct PropertyWrapper: View {
    @State private var count: Int = 0
    var body: some View {
        ChieldView(count: $count)
        ResetButton(count: $count)
    }
}

/*
 •    @State → Üst View’de tanımlı asıl veri
 •    @Binding → Alt View’de veriyle canlı bağlantı
 */
struct ChieldView: View {
    @Binding var count: Int
    var body: some View {
        Button("Click Me") {
            count += 1
        }
        Text("\(count)")
    }
}

struct ResetButton: View {
    @Binding var count: Int
    var body: some View {
        Button("Reset") {
            count = 0
        }
    }
}

#Preview {
    PropertyWrapper()
}
