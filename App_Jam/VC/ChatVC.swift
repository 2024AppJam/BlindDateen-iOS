import UIKit

class ChatVC: BaseVC {
//    private let chatList = UIImageView(image: UIImage(named: "ChatList"))
    private let chatList = UIButton().then {
        $0.setImage(UIImage(named: "ChatList"), for: .normal)
        $0.addTarget(self, action: #selector(chatListDidTap), for: .touchUpInside)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func addView() {
        [chatList].forEach {
            view.addSubview($0)
        }
    }
    
    override func setLayout() {
        chatList.snp.makeConstraints {
            $0.top.equalToSuperview().offset(54)
            $0.centerX.equalToSuperview()
        }
    }
    
    @objc func chatListDidTap() {
        let chattingVC = ChattingVC()
        chattingVC.modalPresentationStyle = .fullScreen
        present(chattingVC, animated: false, completion: nil)
    }
}
