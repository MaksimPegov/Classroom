//
//  ContentView.swift
//  Classroom
//
//  Created by Maksim Pegov on 06/10/2022.
//

import SwiftUI

struct MainView: View {
    var max = ["maksim", "anton", "alina"]
    
    var gradient = LinearGradient(colors: [Color("pinkMain"), Color("blueMain"), Color("pinkMain")], startPoint: .topLeading, endPoint: .bottomTrailing)
        
    
    init() {
        UINavigationBar.appearance().tintColor = .white
    }
    
    
    var body: some View {
        NavigationView{
            
            ZStack {
                gradient.ignoresSafeArea()
                VStack{

                    NavigationLink {
                        ComputerView()
                    } label: {
                        Text("Computer 1")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color("pinkSecond"))
                            .background()
                            .cornerRadius(10)
                    }
                    
                    NavigationLink {
                        Text("ebanyi swift")
                    } label: {
                        Text("Computer 2")
                            .foregroundColor(.black)
                            .padding()
                            .background(Color("pinkSecond"))
                            .background()
                            .cornerRadius(10)
                    }
                    

                    
                }
                
                
                .navigationTitle("Classroom")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack() {
                            NavigationLink {
                                AccountView()
                            } label: {
                                Image(systemName: "person.circle")
                                    .foregroundColor(.black)
                            }
                            
                        }
                    }
            }
            }
            
        }.accentColor(.black)
        
    }
    
    
    
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
