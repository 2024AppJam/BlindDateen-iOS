import UIKit

class TabBarVC: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.tintColor = UIColor(named: "BlindDateenPink")
        
        let datingPlaceVC = DatingPlaceVC()
        let eventVC = EventVC()
        let mainVC = MainVC()
        let chatVC = ChatVC()
        let myPageVC = MyPageVC()
        
        datingPlaceVC.tabBarItem.image = UIImage.init(named: "DatingPlaceIcon")
        eventVC.tabBarItem.image = UIImage.init(named: "EventIcon")
        mainVC.tabBarItem.image = UIImage.init(named: "MainIcon")
        chatVC.tabBarItem.image = UIImage.init(named: "ChatIcon")
        myPageVC.tabBarItem.image = UIImage.init(named: "MyPageIcon")
        
        datingPlaceVC.navigationItem.largeTitleDisplayMode = .always
        eventVC.navigationItem.largeTitleDisplayMode = .always
        mainVC.navigationItem.largeTitleDisplayMode = .always
        chatVC.navigationItem.largeTitleDisplayMode = .always
        myPageVC.navigationItem.largeTitleDisplayMode = .always
        
        let navigationDatingPlace = UINavigationController(rootViewController: datingPlaceVC)
        let navigationEvent = UINavigationController(rootViewController: eventVC)
        let navigationMain = UINavigationController(rootViewController: mainVC)
        let navigationChat = UINavigationController(rootViewController: chatVC)
        let navigationMyPage = UINavigationController(rootViewController: myPageVC)
        
        
        navigationDatingPlace.navigationBar.prefersLargeTitles = true
        navigationEvent.navigationBar.prefersLargeTitles = true
        navigationMain.navigationBar.prefersLargeTitles = true
        navigationChat.navigationBar.prefersLargeTitles = true
        navigationMyPage.navigationBar.prefersLargeTitles = true
        
        setViewControllers([navigationDatingPlace, navigationEvent, navigationMain, navigationChat, navigationMyPage], animated: false)
    }
}
