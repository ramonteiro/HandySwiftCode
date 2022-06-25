//
//  InternetMonitor.swift
//   InternetMonitor
//
//  Created by Raphael Monteiro on 24/06/22.
//

import Foundation
import Network

// Check device's Internet reachability.
final class InternetMonitor: ObservableObject {
    private var internetMonitor = NWPathMonitor()
    
    @Published var isDeviceDisconnected = false
    
    init() {
        startInternetMonitoring()
        setupInternetMonitor()
    }
    
    private func setupInternetMonitor() {
        self.internetMonitor.pathUpdateHandler = { [weak self] path in
            if path.status == .unsatisfied {
                DispatchQueue.main.async {
                    self?.isDeviceDisconnected = true
                }
            }
        }
    }
    
    private func startInternetMonitoring() {
        let queue = DispatchQueue(label: "InternetMonitor")
        self.internetMonitor.start(queue: queue)
    }
    
}
