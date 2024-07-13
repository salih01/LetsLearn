//
//  AlignmentView.swift
//  LetsLearn
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 13.07.2024.
//

import SwiftUI

struct AlignmentView: View {
    var body: some View {
        Text("Hello, World!")
        VStack {
            HStack {
                Rectangle()
                    .foregroundStyle(.pink).frame(width: 25)
                Spacer()
                Text("leading")
                Spacer()
                Text("center")
                Spacer()
                Text("trailing")
                    .padding(.trailing)
            }
            .border(Color.pink)
        }
        HStack {
            Rectangle()
                .foregroundStyle(.pink).frame(width: 25)
            Spacer()
            Text("leading")
            Spacer()
            Text("center")
            Spacer()
            Text("trailing")
                .padding(.trailing)
        }
        .border(Color.pink)
        HStack {
            Rectangle()
                .foregroundStyle(.pink).frame(width: 25)
            Spacer()
            Text("leading")
            Spacer()
            Text("center")
            Spacer()
            Text("trailing")
                .padding(.trailing)
        }
        .border(Color.pink)
    }
}

#Preview {
    AlignmentView()
}
