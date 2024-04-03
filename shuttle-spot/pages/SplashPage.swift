//
//  SplashView.swift
//  SmashFinal
//
//  Created by Valentinus Kenji on 03/04/24.
//

import SwiftUI

struct SplashPage: View {
    @EnvironmentObject var router : Router
    @State var isActive: Bool = false
    
    
    
    var body: some View {
        
        VStack{
            Image("Logo")
        }
        .onAppear{
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5){
                withAnimation{
                    router.navigate(to: .login)
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider{
    static var previews: some View{
        SplashPage ()
    }
    
}
