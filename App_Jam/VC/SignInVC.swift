import UIKit

class SignInVC: BaseVC {
    private let hi = UILabel().then {
        $0.text = "dfdfdfd"
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
