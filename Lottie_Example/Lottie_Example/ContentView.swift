import SwiftUI
import Lottie

struct ContentView: View {
    
    private let remoteAnimationURL = URL(
        string: "https://lottie.host/64cd223a-f8f6-4359-8f7c-b77bf2b5c629/GYjUGHbH08.json"
        )!
    
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {
                
                Text("Lottie Animation Demo")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)
                
                // MARK: - Local Animation Card
                
                VStack(spacing: 15) {
                    
                    Text("Local Animation")
                        .font(.headline)
                        .foregroundColor(.blue)
                    
                    LottiePlayerView(
                        source: .local("Loader_cat"),
                        loopMode: .loop
                    )
                    .frame(height: 220)
                }
                
                
                Divider()
                // MARK: - Remote Animation Card
                
                VStack(spacing: 15) {
                    
                    Text("Remote Animation")
                        .font(.headline)
                        .foregroundColor(.green)
                    
                    LottiePlayerView(
                        source: .remote(remoteAnimationURL),
                        loopMode: .loop
                    )
                    .frame(height: 220)
                }
                
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
