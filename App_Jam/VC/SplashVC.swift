import UIKit
import SnapKit
import Then

public final class SplashVC: BaseVC {
    let logoImage = UIImageView(image: UIImage(named: "Logo"))
    
    let blindDateenTitle = UIImageView(image: UIImage(named: "BlindDateenTitle"))

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
            self.navigateToSignIn()
        }
    }
    
    // MARK: AddView
    override func addView() {
        [logoImage, blindDateenTitle].forEach { view.addSubview($0) }
    }
    
    // MARK: SetLayout
    override func setLayout() {
        logoImage.snp.makeConstraints {
            $0.top.equalToSuperview().offset(321)
            $0.centerX.equalToSuperview()
        }
        
        blindDateenTitle.snp.makeConstraints {
            $0.top.equalTo(logoImage.snp.bottom).offset(24)
            $0.centerX.equalToSuperview()
        }
    }
    
    private func navigateToSignIn() {
        let signInVC = SignInVC()
        signInVC.modalPresentationStyle = .fullScreen
        present(signInVC, animated: false, completion: nil)
    }
}
