import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(sender.currentTitle!)
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
            sender.alpha = 1
        }
    }
    
    func playSound(_ note: String) {
        let url = Bundle.main.url(forResource: note, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

