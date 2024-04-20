import UIKit

class MyPageVC: BaseVC {
    private let profileView = UIImageView(image: UIImage(named: "MyPageView"))

    override func addView() {
        view.addSubview(profileView)
    }

    override func setLayout() {
        super.setLayout()
        profileView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(54)
            $0.centerX.equalToSuperview()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc private func profileButtonTapped() {
        let signUpVC = SignUpVC()
        signUpVC.modalPresentationStyle = .fullScreen
        present(signUpVC, animated: false, completion: nil)
    }
}
