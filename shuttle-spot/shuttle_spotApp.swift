//
//  shuttle_spotApp.swift
//  shuttle-spot
//
//  Created by Dason Tiovino on 26/03/24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct shuttle_spotApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @ObservedObject var router = Router()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.navPath){
                ChatDetailPage(viewModel: ChatViewModel())
                    .navigationDestination(for: Router.Destination.self){ destination in
                        switch destination{
                            case .tab:
                                TabPage()
                                .navigationBarBackButtonHidden()
                        
                            case .login:
                                LoginPage()
                                .navigationBarBackButtonHidden()
                            
                            case .register:
                                RegisterPage()
                                .navigationBarBackButtonHidden()
                        }
                    }
            }.environmentObject(router)
        }
    }
}

struct AppPreviews_Previews: PreviewProvider {
    static var previews: some View {
        TabPage()
    }
}

