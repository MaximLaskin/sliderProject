
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorChangeView: UIView!
    
    @IBOutlet weak var colorRed: UILabel!
    @IBOutlet weak var colorGreen: UILabel!
    @IBOutlet weak var colorBlue: UILabel!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorChangeView.layer.cornerRadius = 10
        
        setupSliders()
        setupColorLabel()
        setupView()
    }

    @IBAction func changeViewColorSliders() {
        redValue.text = String(redSlider.value)
        greenValue.text = String(greenSlider.value)
        blueValue.text = String(blueSlider.value)
        
        self.colorChangeView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    // MARK: - Private Methods
    private func setupColorLabel() {
        colorRed.text = "Red:"
        colorGreen.text = "Green:"
        colorBlue.text = "Blue:"
        
        redValue.text = String(redSlider.value)
        greenValue.text = String(greenSlider.value)
        blueValue.text = String(blueSlider.value)
        
        [colorRed, colorGreen, colorBlue, redValue, greenValue, blueValue].forEach{$0?.textColor = .white}
    }
    
    private func setupSliders() {
        redSlider.value = Float(CGFloat.random(in: 0...1))
        greenSlider.value = Float(CGFloat.random(in: 0...1))
        blueSlider.value = Float(CGFloat.random(in: 0...1))
        
        [redSlider, greenSlider, blueSlider].forEach{$0?.minimumValue = 0}
        [redSlider, greenSlider, blueSlider].forEach{$0?.maximumValue = 1}
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        blueSlider.minimumTrackTintColor = .blue
    }
}

