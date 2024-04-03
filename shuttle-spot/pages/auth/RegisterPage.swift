//
//  RegisterView.swift
//  SmashFinal
//
//  Created by Valentinus Kenji on 03/04/24.
//

import SwiftUI

struct RegisterPage: View {
    
        @State private var email = ""
        @State private var password = ""
        @State private var name = ""
        var body: some View {
            GeometryReader { geometry in
                NavigationStack{
                    VStack{
                        //image
                        Image("Logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 184.57, height: 83)
                            .padding(.vertical,50)
                            
                        //formfields
                        VStack(spacing: 12 ){
                            HStack{
                                Text("Sign Up")
                                    .multilineTextAlignment(.leading)
                                Spacer()
                            }
                            InputView(text: $name, title: "Full Name", placeholder: "Widodo")
                                .autocapitalization(.words)
                            
                            InputView(text: $email, title: "Email Address", placeholder: "abc123@example.com")
                                .autocapitalization(.none)
                            
                            InputView(text: $password, title: "Password", placeholder: "Enter Your Password",
                            isSecureField: true)
                          
                            
                        }.padding(.horizontal)
                            .padding(.top, 12)
                            
                        //signInButton
                        
                       
                            Button{
                                print("Sign Up")
                            } label: {
                                HStack{
                                    Text("Sign Up")
                                        .fontWeight(.semibold)
                                    Image(systemName: "arrow.right")
                                    
                                }
                                
                                .foregroundColor(.white)
                                .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                                
                            }
                            .background(Color(.color))
                            .cornerRadius(10)
                            .padding(.top, 24)
                            
                        }
                      
                            
                            Spacer()
                        

                    
                    }
                }
            }
        }
    

struct RegisterPage_Previews: PreviewProvider{
    static var previews: some View {
        RegisterPage()
    }
}
