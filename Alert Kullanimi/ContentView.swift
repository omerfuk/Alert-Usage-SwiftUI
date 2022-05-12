//
//  ContentView.swift
//  Alert Kullanimi
//
//  Created by Ömer Faruk Kılıçaslan on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var alertGorunsunMu = false
    
    var body: some View {
        
        
        Button {
            self.alertGorunsunMu = true
        } label: {
            Text("Alert Göster")
        }
        .alert(isPresented: $alertGorunsunMu){
            Alert(title: Text("Başlık"), message: Text("MesajMesaj"),
                  primaryButton: .destructive(Text("Tamam")){
                print("Tamam Tıklandı")
                
            },
                  secondaryButton: .cancel(Text("İptal")){
                print("İptal Tıklandı")
            })
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
