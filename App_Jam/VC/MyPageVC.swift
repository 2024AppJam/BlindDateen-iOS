import UIKit

class MyPageVC: BaseVC {
    private let text = UILabel().then {
        $0.text = "마이페이지입니당"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [text].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        text.snp.makeConstraints {
            $0.centerX.centerY.equalToSuperview()
        }
    }
}
