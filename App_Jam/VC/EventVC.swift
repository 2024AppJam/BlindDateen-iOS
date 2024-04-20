import UIKit

class EventVC: BaseVC {
    private let titleLabel = UILabel().then {
        $0.text = "EVENT"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private let searchTextField = UITextField().then {
        $0.backgroundColor = UIColor(named: "BlindDateenLightGrayColor")
        $0.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        $0.attributedPlaceholder = NSAttributedString(string: "찾고싶은 이벤트를 검색하세요", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15, weight: .regular)])
        $0.layer.cornerRadius = 15
        $0.borderStyle = .none
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 27))
        $0.leftView = leftPaddingView
        $0.leftViewMode = .always

        let rightPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 27))
        $0.rightView = rightPaddingView
        $0.rightViewMode = .always
        
        $0.textColor = .black
    }
    
//    private let coffeeCardView = UIImageView(image: UIImage(named: "CoffeeEventCard"))
    private let coffeeCardView = UIButton().then {
        $0.setImage(UIImage(named: "CoffeeEventCard"), for: .normal)
        $0.addTarget(self, action: #selector(coffeeCardViewDidTap), for: .touchUpInside)
    }
    
    private let evnetCardView = UIImageView(image: UIImage(named: "EventCards"))
    
    private let scrollView = UIScrollView().then {
        $0.backgroundColor = .clear
        $0.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addView()
        setLayout()
    }
    
    override func addView() {
        [titleLabel, searchTextField, scrollView, coffeeCardView, evnetCardView].forEach { view.addSubview($0) }
        scrollView.addSubview(collectionView)
    }
    
    override func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(76)
            $0.leading.equalToSuperview().offset(20)
        }
        
        searchTextField.snp.makeConstraints {
            $0.width.equalTo(201)
            $0.height.equalTo(27)
            $0.top.equalToSuperview().offset(86)
            $0.trailing.equalToSuperview().inset(20)
        }
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        scrollView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        collectionView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        coffeeCardView.snp.makeConstraints {
            $0.width.equalTo(362)
            $0.height.equalTo(252)
            $0.top.equalTo(titleLabel.snp.bottom).offset(30)
            $0.centerX.equalToSuperview()
        }
        
        evnetCardView.snp.makeConstraints {
            $0.top.equalTo(coffeeCardView.snp.bottom).offset(16)
            $0.centerX.equalToSuperview()
        }
    }
    
    @objc func coffeeCardViewDidTap() {
        let 이벤트상세VC = 이벤트상세VC()
        이벤트상세VC.modalPresentationStyle = .fullScreen
        present(이벤트상세VC, animated: false, completion: nil)
    }
}

extension EventVC: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: EventViewCell.identifier, for: indexPath) as! EventViewCell
        
        scrollView.addSubview(collectionView)
        
        return cell
    }
}
