//
//  BLEConnectionImp.swift
//  DidpoolFit
//
//  Created by Ricardo Antolin on 5/10/23.
//

import Foundation
import CoreBluetooth

class BLEConnectionImp: NSObject, BLEConectionProtocol {
    weak var delegate: BLEDelegate?
    
    private var manager: CBCentralManager!
    private var discovered: [CBPeripheral] = []
    
    override init() {
        self.manager = CBCentralManager(delegate: self, queue: nil)
    }
    
    func scan(services: [CBUUID]) {
        discovered = []
        manager.scanForPeripherals(withServices: services)
    }
    
    func connect(device: BLEDevice) {
        manager.connect(device.mapToCBPeripheral()!)
    }
    
    func disconnect(device: BLEDevice) {
        manager.cancelPeripheralConnection(device.mapToCBPeripheral()!)
    }
}

extension BLEConnectionImp: CBCentralManagerDelegate {
    func centralManagerDidUpdateState(_ central: CBCentralManager) {}
    
    func centralManager(
        _ central: CBCentralManager,
        didDiscover peripheral: CBPeripheral,
        advertisementData: [String : Any],
        rssi RSSI: NSNumber
    ) {
        discovered.append(peripheral)
        delegate?.found(devices: discovered.map({ $0.mapToBLEDevice() }))
    }
    
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        delegate?.conectionState(device: peripheral.mapToBLEDevice(), state: true)
    }
    
    func centralManager(_ central: CBCentralManager, didFailToConnect peripheral: CBPeripheral, error: Error?) {
        delegate?.conectionState(device: peripheral.mapToBLEDevice(), state: false)
    }
}


extension CBPeripheral {
    func mapToBLEDevice() -> BLEDevice {
        return BLEDevice()
    }
}

extension BLEDevice {
    func mapToCBPeripheral() -> CBPeripheral? {
        return nil
    }
}
