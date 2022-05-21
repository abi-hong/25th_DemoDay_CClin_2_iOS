//
//  Font+SpoqaHanSansNeo.swift
//  CClin_iOS
//
//  Created by 홍세은 on 2022/05/20.
//

import SwiftUI

struct SpoqaHanSansNeo {
    
    static func bold(size: CGFloat) -> Font {
            return Font.custom("SpoqaHanSansNeo-Bold", size: size)
    }
    
    static func light(size: CGFloat) -> Font {
            return Font.custom("SpoqaHanSansNeo-Light", size: size)
    }
    
    static func medium(size: CGFloat) -> Font {
            return Font.custom("SpoqaHanSansNeo-Medium", size: size)
    }
    
    static func regular(size: CGFloat) -> Font {
            return Font.custom("SpoqaHanSansNeo-Regular", size: size)
    }
    
    static func thin(size: CGFloat) -> Font {
            return Font.custom("SpoqaHanSansNeo-Thin", size: size)
    }
}
