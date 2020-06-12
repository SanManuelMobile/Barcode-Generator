<p align="center">
  <img src="https://raw.githubusercontent.com/yeahdongcn/RSBarcodes_Swift/master/home-hero-swift-hero.png">
</p>

Forked from yeahdongcn/RSBarcodes_Swift
 
Allows you to generate the same set of barcode images for displaying and sharing.

## TODO

### Generators

- [x] Code39
- [x] Code39Mod43
- [x] ExtendedCode39
- [x] Code93
- [x] Code128
- [x] UPCE
- [x] EAN FAMILIY (EAN8 EAN13 ISBN13 ISSN13)
- [x] ITF14
- [x] Interleaved2of5
- [ ] DataMatrix
- [x] PDF417
- [x] QR
- [x] Aztec
- [x] Views

## Installation

### [Swift Package Manager](https://github.com/apple/swift-package-manager)

To add a package dependency to your Xcode project, select File > Swift Packages > Add Package Dependency and enter https://github.com/SanManuelMobile/Barcode-Generator to the text field.

## Usage

[How to Use Generator](#generator-1) and
[How to Use Reader](#reader-1)

### Generators

First, import the following frameworks:

``` swift
import BarcodeGenerator
import AVFoundation
```

Then, use the generator to generate a barcode. For example:

``` swift
RSUnifiedCodeGenerator.shared.generateCode("2166529V", machineReadableCodeObjectType: AVMetadataObjectTypeCode39Code)
```
It will generate a `UIImage` instance if the `2166529V` is a valid code39 string. For `AVMetadataObjectTypeCode128Code`, you can change `useBuiltInCode128Generator` to `false` to use my implementation (AutoTable for code128).

P.S. There are 4 tables for encoding a string to code128, `TableA`, `TableB`, `TableC` and `TableAuto`; the `TableAuto` is always the best choice, but if one has specific requirements, try this:

``` swift
RSCode128Generator(codeTable: .A).generateCode("123456", machineReadableCodeObjectType: AVMetadataObjectTypeCode128Code)
```
Example of these simple calls can be found in the test project.


### Validator

To validate codes:

``` swift
let isValid = RSUnifiedCodeValidator.shared.isValid(code, machineReadableCodeObjectType: AVMetadataObjectTypeEAN13Code)
```

### Image helpers

Use `RSAbstractCodeGenerator.resizeImage(source: UIImage, scale: CGFloat)` to scale the generated image.

Use `RSAbstractCodeGenerator.resizeImage(source: UIImage, targetSize: CGSize, contentMode: UIViewContentMode)` to fill/fit the bounds of something to the best capability and don't necessarily know what scale is too much to fill/fit, or if the `UIImageView` itself is flexible.

## Miscellaneous

[The Swift Programming Language 中文版](https://github.com/numbbbbb/the-swift-programming-language-in-chinese/)

[Online version](http://numbbbbb.github.io/the-swift-programming-language-in-chinese/) generated using [GitBook](https://www.gitbook.io/)

## License

    The MIT License (MIT)

    Copyright (c) 2012-2014 P.D.Q.

    Permission is hereby granted, free of charge, to any person obtaining a copy of
    this software and associated documentation files (the "Software"), to deal in
    the Software without restriction, including without limitation the rights to
    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
    the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
