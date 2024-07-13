//
//  ContentView.swift
//  LetsLearn
//
//  Created by Mehmet Salih ÇAKMAK (Mobil Uygulamalar Uygulama Geliştirme Müdürlüğü) on 8.07.2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @State var screen = UIScreen.main.bounds
    var body: some View {
        VStack {
            Rectangle()
                .fill(
                    LinearGradient(colors: [.black,.white], startPoint: .bottom, endPoint: .top)
                )
                .frame(width: 200,height: 200)
            
            Rectangle()
                .fill(
                    LinearGradient(colors: [.black,.white], startPoint: .bottom, endPoint: .top)
                )
                .frame(width: 200,height: 200)
        }
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
