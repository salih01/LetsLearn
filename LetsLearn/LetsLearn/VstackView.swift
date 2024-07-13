//
//  VstackView.swift
//  LetsLearn
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 13.07.2024.
//

import SwiftUI

struct VstackView: View {
    var body: some View {
        VStack(spacing: 40) {
            Text("HStack")
                .font(.largeTitle)
            
            Text("Spacing")
                .font(.title)
                .foregroundStyle(Color.gray)
            
            Text("Today learn SwiftUI . Becouse , we need it")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow).font(.title)
            
            HStack() {
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            .font(.title)
            
            Divider()
            
        }
    }
}

#Preview {
    VstackView()
}
