import UIKit
import Social

class MainViewController: UIViewController {

    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var youAreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.youAreLabel.hidden = true
        self.nameLabel.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func tweetName(sender: AnyObject) {
        
    }
    
    func calculateName() {
        
//        NSString *finalName = @"test2";
//        NSString *tweet = @"intent/tweet?text=From+this+moment+forward,+I+will+be+known+as+";
//        NSString *tweet2 = @".%0A-+And+your+Wu-Tang+name?%0A+http://appsto.re/2l3KA%0A+via+@WuNameMe";
//        NSString *finalUrl = [NSString stringWithFormat:@"%@%@%@", tweet, finalName, tweet2];
//        NSString *strurl = [NSString stringWithFormat:@"http://www.twitter.com/%@", finalUrl];
//        NSString *stuff = [NSString stringWithFormat:@"twitter://post?message=From this moment forward, I will be known as %@.\nAnd your Wu-Tang name?\ngoo.gl/x4uoMS\nvia @WuNameMe", finalName];

        
    }
    
    @IBAction func generateName(sender: AnyObject) {
        self.nameLabel.text = ""
        self.youAreLabel.hidden = false
        self.nameLabel.hidden = false
    }

}

