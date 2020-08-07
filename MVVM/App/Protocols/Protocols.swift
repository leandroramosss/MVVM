//
//  Protocols.swift
//  MVVM
//
//  Created by Leandro Ramos on 8/6/20.
//  Copyright © 2020 Black Beard Games. All rights reserved.
//

import Foundation

protocol ViewLayout: class {
    func setUpLayout()
}

extension ViewLayout {
    func addSubviews() {}
    func setupConstraints() {}
    func navigationLayout() {}
}
