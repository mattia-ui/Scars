import UIKit
import ViewAnimator
import ObjectMapper
import RxSwift
import RxCocoa
import SDWebImage


class SecondaTutorial : UIViewController {
    
    @IBOutlet weak var PrimaLabel: UILabel!
    @IBOutlet weak var SecondaLabel: UILabel!
    @IBOutlet weak var TerzaLabel: UITextView!
    @IBOutlet weak var TiziaViola: UIImageView!
    @IBOutlet weak var tab: UIImageView!
    @IBOutlet weak var TiziaBionda: UIImageView!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var hashtag: UIImageView!
    var text:[String] = []
    
    var cont = 0
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        var i = 1
        Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { timer in
            if(i == 80){
                i = 1
            }
            self.hashtag.image = UIImage(named: "hashtag_\(i)")
            i += 1
        }
    }
    
    override func viewDidLoad() {
        overrideUserInterfaceStyle = .light
        
        text = ENG.textOnSecondaTutorial
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleTap))
               view.addGestureRecognizer(tap)
        TerzaLabel.text = text[0]
        TiziaBionda.alpha = 0
        button.alpha = 0
        
    }
    
    @objc func handleTap(){
        if(cont != 2){
            cont += 1
            change()
        }
    }
    
    func change(){
        if(cont == 1){
            UIView.animate(withDuration: 0.2){
                self.PrimaLabel.alpha = 0
                self.SecondaLabel.alpha = 0
                self.TerzaLabel.alpha = 0
            }
            PrimaLabel.text = "#skinsugi"
            SecondaLabel.text = text[1]
            TerzaLabel.text = text[2]
            
            UIView.animate(withDuration: 0.2){
            self.PrimaLabel.alpha = 1
            self.SecondaLabel.alpha = 1
            self.TerzaLabel.alpha = 1
            }
        }
        else if(cont == 2){
//            UIView.animate(withDuration: 0.2){
//                self.PrimaLabel.alpha = 0
//                self.SecondaLabel.alpha = 0
//                self.TerzaLabel.alpha = 0
                self.TiziaViola.alpha = 0
               self.hashtag.alpha = 0
//            }
            PrimaLabel.text = text[3]
            SecondaLabel.text = text[4]
            TerzaLabel.text = text[5]
//            UIView.animate(withDuration: 0.2){
//                self.PrimaLabel.alpha = 1
//                self.SecondaLabel.alpha = 1
//                self.TerzaLabel.alpha = 1
                self.TiziaBionda.alpha = 1
                self.button.alpha = 1
//            }
        }
    }
    
}
