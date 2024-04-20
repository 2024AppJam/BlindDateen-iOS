import UIKit

class SignUpVC: BaseVC {
    private let hi = UILabel().then {
        $0.text = "회원가입페이지"
        $0.textColor = .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [hi].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        hi.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}
