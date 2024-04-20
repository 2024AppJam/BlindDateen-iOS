import UIKit

class MainVC: BaseVC {
    private let yo = UIImageView().then {
        $0.image = UIImage(named: "요청")
    }
    
    private let 추천Label = UILabel().then {
        $0.text = "추천"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 22, weight: .regular)
    }
    
    private let peoples = UIImageView().then {
        $0.image = UIImage(named: "Peoples")
    }
    
    private let 매칭Button = UIButton().then {
        $0.setImage(UIImage(named: "매칭"), for: .normal)
    }
    
    private let 키워드 = UIImageView().then {
        $0.image = UIImage(named: "키워드")
    }
    
    private let 추천 = UIImageView().then {
        $0.image = UIImage(named: "키워드추천")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [yo, 추천Label, peoples, 매칭Button, 키워드, 추천].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        yo.snp.makeConstraints {
            $0.top.equalToSuperview().offset(54)
            $0.leading.trailing.equalToSuperview()
        }
        
        추천Label.snp.makeConstraints {
            $0.top.equalTo(yo.snp.bottom).offset(28)
            $0.leading.equalToSuperview().offset(20)
        }
        
        peoples.snp.makeConstraints {
            $0.top.equalTo(추천Label.snp.bottom).offset(4)
            $0.leading.equalToSuperview()
        }
        
        매칭Button.snp.makeConstraints {
            $0.top.equalTo(yo.snp.bottom).offset(210)
            $0.centerX.equalToSuperview()
        }
        
        키워드.snp.makeConstraints {
            $0.top.equalTo(매칭Button.snp.bottom).offset(8)
            $0.centerX.equalToSuperview()
        }
        
        추천.snp.makeConstraints {
            $0.top.equalTo(키워드.snp.bottom).offset(25)
            $0.centerX.equalToSuperview()
        }
    }
}
