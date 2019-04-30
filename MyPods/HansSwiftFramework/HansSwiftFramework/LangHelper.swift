//
//  LangHelper.swift
//  HansSwiftFramework
//
//  Created by huangjianwu on 2019/4/26.
//  Copyright © 2019 huangjianwu. All rights reserved.
//

import Foundation
import HansCommonFramework

public class LangHelper: NSObject {
    
    public func getName() -> String {
        let dic = ["name1":"hans", "name2":"lucent"]
        let name1 = dic["name1"]
        let name2 = dic["name2"]
        let name = name1! + name2!
        
        let dic1 = ["name1":"hans", "name2":"lucent"]
        let name11 = dic["name1"]
        let name12 = dic["name2"]
        let name21 = name11! + name12!
        return name + name21
    }
    
    public func getImage123() -> UIImage? {
        let bundle = Bundle(for: LangHelper.self)
        let image = UIImage.init(named: "4", in: bundle, compatibleWith: nil)
        return image
    }
    
    public func getLocalizableText() -> String {
//        NSLocalizedString("Good", tableName: nil, bundle: NSBundle(forClass: self), value: "", comment: "")
        let yourString = NSLocalizedString("cp.title", tableName: "Cassio", bundle: Bundle(for: type(of: self)), value: "", comment: "")
        return yourString
    }
    
    
    public func cassioBundle() -> Bundle? {
        let bundle = Bundle(for: LangHelper.self)
        return bundle
        //return Bundle(for: type(of: self))
    }
    
    public func cassioIdentifierBundle() -> Bundle? {
        let bundle: Bundle = (Bundle(identifier: "org.cocoapods.MyFramework") ?? nil)!
        return bundle
    }
    
    public func testJson() {
        let jsonStr = "[{\"name\": \"hangge\", \"age\": 100, \"phones\": [{\"name\": \"公司\",\"number\": \"123456\"}, {\"name\": \"家庭\",\"number\": \"001\"}]}, {\"name\": \"big boss\",\"age\": 1,\"phones\": [{ \"name\": \"公司\",\"number\": \"111111\"}]}]"
        
        if let jsonData = jsonStr.data(using: String.Encoding.utf8, allowLossyConversion: false) {
            //.........
            print(jsonData)
        }
    }
    
    public func testCommonFramework() {
        //
        let c = Common()
        c.myCommonFuction()
    }
}
