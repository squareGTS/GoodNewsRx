//
//  URLRequest+Extensions.swift
//  GoodNewsRx
//
//  Created by Maxim Bekmetov on 27.10.2022.
//

import UIKit
import RxSwift
import RxCocoa

struct Resource<T: Decodable> {
    let url: URL
}

extension URLRequest {

    static func load<T>(resource: Resource<T>) -> Observable<T?> {

        return Observable.from([resource.url])
            .flatMap { url -> Observable<Data> in
                let request = URLRequest(url: url)
                return URLSession.shared.rx.data(request: request)
            }.map { data -> T? in
                return try? JSONDecoder().decode(T.self, from: data)

        }.asObservable()

    }

}
