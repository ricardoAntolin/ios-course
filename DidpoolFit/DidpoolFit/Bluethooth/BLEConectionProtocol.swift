//
//  BLEConectionProtocol.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin on 5/10/23.
//

import Foundation
import CoreBluetooth

struct BLEDevice {
    
}

protocol BLEConectionProtocol {
    var delegate: BLEDelegate? { get set }
    func scan(services: [CBUUID])
    func connect(device: BLEDevice)
    func disconnect(device: BLEDevice)
}

protocol BLEDelegate: AnyObject {
    func found(devices: [BLEDevice])
    func conectionState(device: BLEDevice, state: Bool)
}



struct BLEManager {
    
}


class pepe: BLEDelegate {
    func found(devices: [BLEDevice]) {
        <#code#>
    }
    
    func conectionState(device: BLEDevice, state: Bool) {
        <#code#>
    }
    
    var bleConnection: BLEConectionProtocol
    
    init(bleConnection: BLEConectionProtocol) {
        self.bleConnection = bleConnection
        self.bleConnection.delegate = self
    }
}
