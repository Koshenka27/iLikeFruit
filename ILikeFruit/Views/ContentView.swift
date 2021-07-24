//
//  ContentView.swift
//  ILikeFruit
//
//  Created by Logan Koshenka on 7/19/21.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    @State private var isShowingSettings = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }))
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
