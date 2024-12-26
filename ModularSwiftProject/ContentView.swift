import SwiftUI
import HelloWorld

enum AppTab: Hashable, Identifiable, CaseIterable {
    
    case products
    case recipes
    case plan
    case profile
    
    var id: AppTab { self }
}

extension AppTab {
    
    @ViewBuilder 
    var label: some View {
        switch self {
        case .products:
            Label("Products", systemImage: "tray.full")
        case .recipes:
            Label("Recipes", systemImage: "menucard")
        case .plan:
            Label("Plan", systemImage: "list.bullet.clipboard")
        case .profile:
            Label("Profile", systemImage: "person.2")
        }
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .plan:
            Text("Plan")
        case .products:
            Text("Products")
        case .recipes:
            Text("Recipes")
        case .profile:
            Text("Profile")
        }
    }
    
}

struct AuthenticatedView: View {
    
    @State var selection: AppTab = .plan
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(AppTab.allCases) { screen in
                screen.destination
                    .tag(screen as AppTab?)
                    .tabItem { screen.label }
            }
        }
    }
}

// MARK: Auth

enum AuthState {
    case unauthenticated
    case authenticated
    case idle
}

@Observable
class Auth {
    var state: AuthState = .authenticated
}

struct ContentView: View {
    @Environment(Auth.self) private var auth
    
    var body: some View {
        let authState = auth.state
        switch authState {
        case .idle:
            ProgressView()
        case .authenticated:
            AuthenticatedView()
        case .unauthenticated:
            Text("Log in please")
        }
    }
}

#Preview {
    ContentView()
        .environment(Auth())
}
