import UIKit

class EventVC: BaseVC {
    private let titleLabel = UILabel().then {
        $0.text = "EVENT"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 30, weight: .bold)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
    override func addView() {
        [titleLabel].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(22)
            $0.leading.equalToSuperview().offset(12)
        }
    }
}
