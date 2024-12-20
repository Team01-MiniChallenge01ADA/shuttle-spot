//
//  LoginView.swift
//  SmashFinal
//
//  Created by Valentinus Kenji on 03/04/24.
//

import SwiftUI

struct LoginPage: View {
    @State private var email = ""
    @State private var password = ""
    
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
                            Text("Sign In")
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        InputView(text: $email, title: "Email Address", placeholder: "abc123@example.com")
                            .autocapitalization(.none)
                        
                        InputView(text: $password, title: "Password", placeholder: "Enter Your Password",
                        isSecureField: true)
                        HStack{
                            ToggleView()

                            Spacer()
                            NavigationLink{
                                ResetPasswordPage()
                            } label:{
                                Text("Forgot Your Password?")
                            }.font(.footnote)

                        
                        }
                    }.padding(.horizontal)
                        .padding(.top, 12)
                        Button{
                            print("Log User In")
                        } label: {
                            HStack{
                                Text("SIGN IN")
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
                    //signUpButton
                
                NavigationLink{
                    RegisterPage()
                } label:{
                    HStack{
                        Text("Don’t have an account?")
                        Text("Sign up")
                            .fontWeight(.bold)
                    }
                    
                }.font(.footnote)

                
                }
            }
        }
    }

struct LoginPage_Previews: PreviewProvider{
    static var previews: some View {
        LoginPage()
    }
}
