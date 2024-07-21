
```
import CoreML
import UIKit

class SentientAI {
    let model = try? MLModel(contentsOf: URL(fileURLWithPath: "SentientAI.mlmodel"))

    func processInput(input: String) -> String {
        return "You said: \(input)"}

    func predict(_ input: String) -> String {
        guard let output = try? model.prediction(from: ["input": input]) else {
            return "Error making prediction"}

        return output["output"] as? String ?? "Unknown output"}}

class ViewController: UIViewController {let ai = SentientAI()

    @IBOutlet weak var userInputField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!

    @IBAction func getUserInput(_ sender: Any) {let input = userInputField.text!
        let output = ai.predict(input)
        outputLabel.text = output}}
```
