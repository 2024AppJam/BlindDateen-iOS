import UIKit

class ChatingVC: BaseVC {
    // MARK: Properties
    private let titleView = UIView(frame: CGRect(x: 0, y: 0, width: 393, height: 114)).then {
        $0.backgroundColor = UIColor(named: "BlindDateenPink")
    }
    
    private let nameLabel = UILabel().then {
        $0.text = "박찬우"
        $0.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        $0.textColor = .black
    }
    
    private let chattingView = UIImageView(image: UIImage(named: "Chatting"))
    
    private let messageView = UIView()
    
    private let messageTextField = UITextField().then {
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 28
        $0.layer.shadowColor = UIColor(white: 0.0, alpha: 0.25).cgColor
        $0.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        $0.layer.shadowOpacity = 1.0
        $0.borderStyle = .none
        $0.translatesAutoresizingMaskIntoConstraints = false
        
        let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 54))
        $0.leftView = leftPaddingView
        $0.leftViewMode = .always
        
        $0.textColor = .black
    }
    
    let cameraIcon = UIImageView(image: UIImage(named: "CameraIcon"))
    
    let recordIcon = UIImageView(image: UIImage(named: "RecordIcon"))
    
    let galleryIcon = UIImageView(image: UIImage(named: "GalleryIcon"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNeedsStatusBarAppearanceUpdate()
        setupKeyboardEvent()
    }
    
    override func addView() {
        [messageTextField].forEach {
            messageView.addSubview($0)
        }
        
        [cameraIcon, recordIcon, galleryIcon].forEach {
            messageTextField.addSubview($0)
        }
        
        titleView.addSubview(nameLabel)
        
        [titleView, chattingView, messageView].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        titleView.snp.makeConstraints {
            $0.width.equalTo(393)
            $0.height.equalTo(114)
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview()
        }
        
        nameLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().offset(70)
        }
        
        chattingView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(114)
            $0.leading.trailing.equalToSuperview()
        }
        
        messageView.snp.makeConstraints {
            $0.height.equalTo(54)
            $0.bottom.equalToSuperview().inset(21)
            $0.leading.trailing.equalToSuperview()
        }
        
        messageTextField.snp.makeConstraints {
            $0.height.equalTo(54)
            $0.bottom.equalToSuperview().inset(3)
            $0.leading.trailing.equalToSuperview().inset(16)
        }
        
        cameraIcon.snp.makeConstraints {
            $0.width.height.equalTo(24)
            $0.centerY.equalToSuperview()
            $0.leading.equalToSuperview().offset(16)
        }
        
        recordIcon.snp.makeConstraints {
            $0.width.height.equalTo(24)
            $0.centerY.equalToSuperview()
            $0.trailing.equalTo(galleryIcon.snp.leading).offset(-16)
        }
        
        galleryIcon.snp.makeConstraints {
            $0.width.height.equalTo(24)
            $0.centerY.equalToSuperview()
            $0.trailing.equalToSuperview().inset(16)
        }
    }
    
    @objc override func keyboardWillShow(_ sender: Notification) {
        guard let keyboardFrame = (sender.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
                return
            }
        
            chattingView.snp.makeConstraints {
                $0.width.equalTo(658)
                $0.bottom.equalToSuperview().inset(keyboardFrame.height + 10)
            }

            UIView.animate(withDuration: 0.3) {
                self.view.layoutIfNeeded()
            }
    }
    
    @objc override func keyboardWillHide(_ sender: Notification) {
        chattingView.snp.updateConstraints {
            $0.width.equalTo(658)
            $0.bottom.equalToSuperview().inset(321)
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }}
