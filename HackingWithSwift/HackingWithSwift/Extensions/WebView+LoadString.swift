//
//  WebView+LoadString.swift
//  HackingWithSwift
//
//  Created by Thomas Kellough on 6/18/20.
//  Copyright © 2020 Hacking with Swift. All rights reserved.
//

import Foundation
import WebKit

extension WKWebView {
    func load(_ urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }

        let request = URLRequest(url: url)
        load(request)
    }
}
