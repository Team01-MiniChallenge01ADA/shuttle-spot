//
//  ResetPasswordView.swift
//  SmashFinal
//
//  Created by Valentinus Kenji on 03/04/24.
//

import SwiftUI

struct ResetPasswordPage: View {
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
                            Text("Reset Password")
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        InputView(text: $email, title: "Email Address", placeholder: "abc123@example.com")
                            .autocapitalization(.none)
                        
                       
                        
                    }.padding(.horizontal)
                        .padding(.top, 12)
                        
                    //senButton
                    
                   
                        Button{
                            print("")
                        } label: {
                            HStack{
                                Text("SEND")
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