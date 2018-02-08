# HSScanCode

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

![](https://raw.githubusercontent.com/zyphs21/HSScanCode/master/demo.gif)

## Requirements

- Swift 4
- iOS 8 +

## Installation

HSScanCode is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HSScanCode'
```

## Usage

```Swift
import HSScanCode

let vc = HSScanViewController()
vc.delegate = self
self.navigationController?.pushViewController(vc, animated: true)


// get scan result from HSScanViewControllerDelegate
extension ViewController: HSScanViewControllerDelegate {
    func scanFinished(scanResult: ScanResult, error: String?) {
        print(scanResult.scanResultString ?? "")
    }
}
```

## Author

zyphs21, hansenhs21@live.com

[my blog: myhanson.com](www.myhanson.com)

## License

HSScanCode is available under the MIT license. See the LICENSE file for more info.
