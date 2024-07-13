//
//  ZstackView.swift
//  LetsLearn
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 13.07.2024.
//

import SwiftUI

struct ZstackView: View {
    var body: some View {
        ZStack {
            Color.pink
            VStack(spacing: 20) {
                Text("Zstack")
                    .font(.largeTitle)
                Text("Introduction")
                    .foregroundStyle(Color.white)
                Text("Hello ZStack learning :D ")
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
                Text("Hello ZStack learning :D,Hello ZStack learning :D Hello ZStack learning :D  ")
                    .foregroundStyle(Color.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.black)
            }
            .font(.title)
        }
    }
}

#Preview {
    ZstackView()
        .ignoresSafeArea()
}
