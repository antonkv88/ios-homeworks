import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
        
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        let userLent = FeedViewController()
        let userProfile = ProfileViewController()
        
        let userLentTab = UINavigationController(rootViewController: userLent)
        let userProfileTab = UINavigationController(rootViewController: userProfile)
        
        let tabBarController = UITabBarController()
        userLentTab.tabBarItem = UITabBarItem(title: "Лента", image: #imageLiteral(resourceName: "lent"), tag: 0)
        userProfileTab.tabBarItem = UITabBarItem(title: "Профиль", image: #imageLiteral(resourceName: "prof"), tag: 1)
        tabBarController.viewControllers = [userLentTab, userProfileTab]
        tabBarController.selectedIndex = 0
        
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {

    }

    func applicationWillTerminate(_ application: UIApplication) {

    }


}

