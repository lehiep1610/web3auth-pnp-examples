import SwiftUI
// IMP START - Installation
import Web3Auth
// IMP END - Installation

@main
struct MainApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(vm: ViewModel())
        }
    }
}

struct ContentView: View {
    @StateObject var vm: ViewModel

    var body: some View {
        NavigationView {
                    VStack {
                        if vm.isLoading {
                            ProgressView()
                        } else {
                            if vm.loggedIn,let user = vm.user, let web3rpc = Web3RPC(user: user) {
                                UserDetailView(user: vm.user, loggedIn: $vm.loggedIn, web3RPC: web3rpc)
                            } else {
                                LoginView(vm: vm)
                            }
                        }
                    }
                    .navigationTitle(vm.navigationTitle)
                    Spacer()
                }
                .onAppear {
                    Task {
                        await vm.setup()
                    }
                }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(vm: ViewModel())
    }
}
