import UIKit

class 이벤트상세VC: BaseVC {
    private let Button = UIButton().then {
        $0.setImage(UIImage(named: "Button"), for: .normal)
        $0.addTarget(self, action: #selector(buttonDidTap), for: .touchUpInside)
    }
    
    private let 포스터 = UIImageView(image: UIImage(named: "포스터"))
    
    private let 상세정보 = UILabel().then {
        $0.text = "이벤트 내용: \n\n - 소개틴 앱을 통해 커피 체인점에서 구매할 때마다 소개틴 포인트 적립! \n\n - 적립된 포인트로 소개틴 앱 내에서 다양한 혜택을 누리세요. \n\n 참여 방법: \n\n 1. 소개틴 앱을 다운로드하고 회원가입하세요. \n\n 2. 커피 체인점에서 구매 시 소개틴 앱 회원 정보를 제시하세요. \n\n 3. 적립된 포인트를 소개틴 앱 내에서 확인하고 혜택을 받아가세요! \n\n 혜택: \n\n - 구매 시마다 포인트 적립"
        $0.textColor = .black
        $0.numberOfLines = 18
        $0.font = UIFont.systemFont(ofSize: 15, weight: .regular)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [Button, 포스터, 상세정보].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        Button.snp.makeConstraints {
            $0.top.equalToSuperview().offset(54)
            $0.leading.equalToSuperview().offset(20)
        }
        
        포스터.snp.makeConstraints {
            $0.top.equalTo(Button.snp.bottom)
            $0.centerX.equalToSuperview()
        }
        
        상세정보.snp.makeConstraints {
            $0.width.equalTo(324)
            $0.height.equalTo(329)
            $0.top.equalTo(포스터.snp.bottom)
            $0.leading.equalToSuperview().offset(20)
        }
    }
    
    @objc func buttonDidTap() {
        let tabbarVC = TabBarVC()
        tabbarVC.modalPresentationStyle = .fullScreen
        present(tabbarVC, animated: false, completion: nil)
    }
}
