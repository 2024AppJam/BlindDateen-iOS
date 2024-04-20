import UIKit

class MainVC: BaseVC {
    private let hi = UILabel().then {
        $0.text = "dhfkdjf"
        $0.textColor = .blue
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
