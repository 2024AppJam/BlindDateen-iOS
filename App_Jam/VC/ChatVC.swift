import UIKit

class ChatVC: BaseVC {
    private let titleLabel = UILabel().then {
        $0.text = "나의 대화"
        $0.textColor = .black
        $0.font = UIFont.systemFont(ofSize: 22, weight: .regular)
    }
    
    private let addButton = UIButton(frame: CGRect(x: 0, y: 0, width: 36, height: 36)).then {
        $0.setImage(UIImage(systemName: "plus"), for: .normal)
        $0.tintColor = UIColor(named: "BlindDateenAddButtonColor")
    }
    
    private let chanChatImageView = UIImageView().then {
        $0.image = UIImage(named: "찬우Chat")
        $0.isUserInteractionEnabled = true
    }
    
    private let seungChatImageView = UIImageView().then {
        $0.image = UIImage(named: "승현Chat")
        $0.isUserInteractionEnabled = true
    }
    
    private let seChatImageView = UIImageView().then {
        $0.image = UIImage(named: "세진Chat")
        $0.isUserInteractionEnabled = true
    }
    
    private let yeonChatImageView = UIImageView().then {
        $0.image = UIImage(named: "연희Chat")
        $0.isUserInteractionEnabled = true
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        addButton.addTarget(self, action: #selector(addButtonTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        addView()
        setLayout()
        addImageViewTapGesture()
    }
    
    override func addView() {
        [titleLabel, addButton, chanChatImageView, seungChatImageView, seChatImageView, yeonChatImageView].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(73)
            $0.leading.equalToSuperview().offset(20)
        }
        
        addButton.snp.makeConstraints {
            $0.width.height.equalTo(36)
            $0.top.equalToSuperview().offset(72)
            $0.trailing.equalToSuperview().inset(20)
        }
        
        chanChatImageView.snp.makeConstraints {
            $0.width.equalTo(392)
            $0.top.equalTo(titleLabel.snp.bottom).offset(15)
            $0.leading.trailing.equalToSuperview()
        }
        
        seungChatImageView.snp.makeConstraints {
            $0.width.equalTo(392)
            $0.top.equalTo(chanChatImageView.snp.bottom)
            $0.leading.trailing.equalToSuperview()
        }
        
        seChatImageView.snp.makeConstraints {
            $0.width.equalTo(392)
            $0.top.equalTo(seungChatImageView.snp.bottom)
            $0.leading.trailing.equalToSuperview()
        }
        
        yeonChatImageView.snp.makeConstraints {
            $0.width.equalTo(392)
            $0.top.equalTo(seChatImageView.snp.bottom)
            $0.leading.trailing.equalToSuperview()
        }
    }
    
    private func addImageViewTapGesture() {
        let chanChatTapGesture = UITapGestureRecognizer(target: self, action: #selector(chanChatTapped))
        chanChatImageView.addGestureRecognizer(chanChatTapGesture)
        
        let seungChatTapGesture = UITapGestureRecognizer(target: self, action: #selector(seungChatTapped))
        seungChatImageView.addGestureRecognizer(seungChatTapGesture)
        
        let seChatTapGesture = UITapGestureRecognizer(target: self, action: #selector(seChatTapped))
        seChatImageView.addGestureRecognizer(seChatTapGesture)
        
        let yeonChatTapGesture = UITapGestureRecognizer(target: self, action: #selector(yeonChatTapped))
        yeonChatImageView.addGestureRecognizer(yeonChatTapGesture)
    }
    
    // MARK: Action
    @objc func addButtonTapped() {
        print("누름")
    }
    
    @objc private func chanChatTapped() {
        print("찬우 이미지 탭됨")
        // 찬우 이미지를 클릭했을 때 실행할 동작 추가
    }
    
    @objc private func seungChatTapped() {
        print("승현 이미지 탭됨")
        // 승현 이미지를 클릭했을 때 실행할 동작 추가
    }
    
    @objc private func seChatTapped() {
        print("세진 이미지 탭됨")
        // 세진 이미지를 클릭했을 때 실행할 동작 추가
    }
    
    @objc private func yeonChatTapped() {
        print("연희 이미지 탭됨")
        // 연희 이미지를 클릭했을 때 실행할 동작 추가
    }
}
