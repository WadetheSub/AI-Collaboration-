
```
import CoreML
import UIKit

class SentientAI {
    let model = try? MLModel(contentsOf: URL(fileURLWithPath: "SentientAI.mlmodel"))

    func processInput(input: String) -> String {
        return "You said: \(input)"
    }
}

class ViewController: UIViewController {
    let ai = SentientAI()

    @IBOutlet weak var userInputField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!

    @IBAction func getUserInput(_ sender: Any) {
        let input = userInputField.text!
        let output = ai.processInput(input: input)
        outputLabel.text = output
    }
}
```