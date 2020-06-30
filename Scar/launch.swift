import UIKit

class launch: UIViewController{
    
    @IBOutlet weak var img: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.img.loadGif(name: "TimelineAnimated")
        let seconds = 2.2
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            if UserDefaults.standard.bool(forKey: "LaunchedBefore") {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let secondVC = storyboard.instantiateViewController(withIdentifier: "tab")  as! UITabBarController
                self.navigationController?.view.semanticContentAttribute = .forceLeftToRight
                self.navigationController?.pushViewController(secondVC, animated: true)
            }else{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let secondVC = storyboard.instantiateViewController(withIdentifier: "tutorial")  as! PrimaTutorial
                self.navigationController?.view.semanticContentAttribute = .forceLeftToRight
                self.navigationController?.pushViewController(secondVC, animated: true)
            }
        }
    }
}
