
import SwiftUI

@main
struct InStockCookApp: App {
    init() {
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor(named: "color1") ?? UIColor.systemGreen
        ]
        UIBarButtonItem.appearance(whenContainedInInstancesOf: [UISearchBar.self])
            .setTitleTextAttributes(attributes, for: .normal)
            }
    
    var body: some Scene {
        WindowGroup {
            SplashScreen()
        }
    }
}


