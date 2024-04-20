import UIKit

class 매칭ListVC: BaseVC {
    private let 매칭List = UIImageView(image: UIImage(named: "매칭List"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [매칭List].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        매칭List.snp.makeConstraints {
            $0.top.equalToSuperview().offset(54)
            $0.centerX.equalToSuperview()
        }
    }
}
