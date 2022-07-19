//
//  ContentView.swift
//  TGAFoodDelivery
//
//  Created by Vivek Sehrawat on 19/07/22.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var pass = ""
    
    var body: some View {
        NavigationView{
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
               
                VStack{
                    TextField("Enter your Email address", text: $email)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                       
                    SecureField("Enter your password", text: $pass)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                    Button(action: {
                        
                    }, label: {
                        Text("Sign In")
                            .frame(width: 200, height: 40)
                            .foregroundColor(Color.white)
                            .background(Color.blue)
                    }).padding()
                       
                }
                .padding()
                
                Spacer()
            }
            .navigationTitle("Sign In")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
                .preferredColorScheme(.light)
          
        }
    }
}
