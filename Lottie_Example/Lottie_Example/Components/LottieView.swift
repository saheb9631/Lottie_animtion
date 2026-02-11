import SwiftUI
import Lottie

enum LottieSource {
    case local(String)
    case remote(URL)
}

struct LottiePlayerView: View {
    
    let source: LottieSource
    let loopMode: LottieLoopMode
    
    var body: some View {
        
        switch source {
            
        // ✅ LOCAL .lottie FILE
            
        case .local(let fileName):
            
            LottieView {
                try? await DotLottieFile.named(fileName)
            }
            .playing(loopMode: loopMode)
            
            
        // ✅ REMOTE JSON FILE
            
        case .remote(let url):
            
            LottieView {
                try? await LottieAnimation.loadedFrom(url: url)
            }
            .playing(loopMode: loopMode)
        }
    }
}
