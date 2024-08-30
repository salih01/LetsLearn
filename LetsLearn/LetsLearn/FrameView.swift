//
//  FrameView.swift
//  LetsLearn
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 30.08.2024.
//

import SwiftUI

struct FrameView: View {
    var body: some View {
        Text("Hello, World!")
            .background(Color.purple)
            .frame(maxWidth: 300)
            .background(Color.blue)
            .frame(height: 300)
            .background(Color.red)
    }
}

#Preview {
    FrameView()
}
