import UIKit

class DatingPlaceVC: BaseVC {
    // MARK: Propertices
    private let datingPlace = UIImageView(image: UIImage(named: "DatingPlace"))
    
    let scrollView: UIScrollView! = UIScrollView()
    
    // MARK: ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(scrollView)
        
    }
    
    // MARK: AddView
    override func addView() {
        [datingPlace].forEach {
            view.addSubview($0)
        }
    }
    
    // MARK: Setlayout
    override func setLayout() {
        datingPlace.snp.makeConstraints {
            $0.top.equalToSuperview().offset(54)
            $0.centerX.equalToSuperview()
        }
    }
}
