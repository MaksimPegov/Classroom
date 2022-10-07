//
//  AccountView.swift
//  Classroom
//
//  Created by Maksim Pegov on 06/10/2022.
//

import SwiftUI

struct AccountView: View {
    @AppStorage("AUTH_KEY") public var authorization = false
    
    var gradient = LinearGradient(colors: [Color("pinkMain"), Color("blueMain"), Color("pinkMain")], startPoint: .topLeading, endPoint: .bottomTrailing)

    
    var body: some View {
        
        ZStack{
            gradient.ignoresSafeArea()
            VStack {
                
                Profile()

                
                Spacer()
                
                Button("Log out"){
                    authorization.toggle()
                }
                .padding()
                .background(Color("pinkSecond"))
                .cornerRadius(10)
                .foregroundColor(.black)
                Spacer()
            }
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

struct Profile: View {
    @AppStorage("USER_NAME") var username = ""
    var body: some View {
        HStack{
            Image(systemName: "person.circle")
            HStack {
                Text("You authorised as")
                Text(username)
                    .fontWeight(.semibold)
            }
        }
        .frame(width: 250, height: 50)
        .background(Color("pinkSecond"))
        .cornerRadius(10)
    }
}
