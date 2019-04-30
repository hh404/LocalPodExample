//
//  ViewController.swift
//  LocalPodExample
//
//  Created by huangjianwu on 2019/4/27.
//  Copyright © 2019 huangjianwu. All rights reserved.
//

import UIKit
import MyFramework
import SwiftyJSON

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let lng = LangHelper()
        let f = lng.getName()
        lng.testJson()
        self.testJson()
//        let amazingBundle = Bundle(for: MyFramework.self)
//        guard let image = UIImage(named: "MyImage", in: amazingBundle, compatibileWith: nil) else {
//
//        }
        
//        let bundlePath = Bundle.main.path(forResource: "Cassio", ofType: "xcassets")
//        let bundle = Bundle.init(path: bundlePath!)
//        let image = bundle?.path(forResource: "4", ofType: "png")
        let image0 = UIImage.init(named: "1", in: Bundle.main, compatibleWith: nil)
        let image1 = UIImage.init(named: "4", in: Bundle.main, compatibleWith: nil)
        let img1 = UIImage.init(named: "MyFramework.framework/4")
       let img2 = lng.getImage123()
        let imgView = UIImageView.init(image: img2)
        self.view.addSubview(imgView)
        
        let str = lng.getLocalizableText()
        self.imageFromFramework()
        self.textFromFramework()
        print(f)
        
        lng.testCommonFramework()
    }

    
    func imageFromFramework()  {
        let help = LangHelper()
//        let bundle = help.cassioBundle()
        //let bundle = help.cassioIdentifierBundle()
        let bundle = Bundle.init(for: LangHelper.self)
        let image = UIImage.init(named: "4", in: bundle, compatibleWith: nil)
        print(image)
    }

    func textFromFramework() {
        let bundle = Bundle.init(for: LangHelper.self)
        let text = NSLocalizedString("cp.title", tableName: "Cassio", bundle: bundle, value: "", comment: "")
        print(text)
    }
    
    func testJson() {
        let jsonStr = "[{\"name\": \"hangge\", \"age\": 100, \"phones\": [{\"name\": \"公司\",\"number\": \"123456\"}, {\"name\": \"家庭\",\"number\": \"001\"}]}, {\"name\": \"big boss\",\"age\": 1,\"phones\": [{ \"name\": \"公司\",\"number\": \"111111\"}]}]"
        
        if let jsonData = jsonStr.data(using: String.Encoding.utf8, allowLossyConversion: false) {
            //.........
            print(jsonData)
        }
    }
}

