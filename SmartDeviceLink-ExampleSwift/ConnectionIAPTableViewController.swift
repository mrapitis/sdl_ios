//
//  ConnectionIAPTableViewController.swift
//  SmartDeviceLink-ExampleSwift
//
//  Copyright © 2017 smartdevicelink. All rights reserved.
//

import UIKit

class ConnectionIAPTableViewController: UITableViewController, ProxyManagerDelegate {
    
    @IBOutlet weak var connectTableViewCell: UITableViewCell!
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var connectButton: UIButton!
    
    var state: ProxyState = ProxyState.ProxyStateStopped
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set delegate to self
        delegate = self
        // TableView Setup
        table.keyboardDismissMode = .onDrag
        table.isScrollEnabled = false;
        // Button setup
        initButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initButton(){
        self.connectTableViewCell.backgroundColor = UIColor.red
        self.connectButton.setTitle("Connect", for: .normal)
        self.connectButton.setTitleColor(.white, for: .normal)
    }
    
    // MARK: - IBActions
    @IBAction func connectButtonWasPressed(_ sender: UIButton) {
        
        // Initialize (or reset) the SDL manager
        switch state {
        case ProxyState.ProxyStateStopped:
            ProxyManager.sharedManager.startIAP()
        case ProxyState.ProxyStateSearchingForConnection:
            ProxyManager.sharedManager.reset()
        case ProxyState.ProxyStateConnected:
            ProxyManager.sharedManager.reset()
        }
    }

    // MARK: - Delegate Functions
    func didChangeProxyState(_ newState: ProxyState){
        state = newState
        var newColor: UIColor? = nil
        var newTitle: String? = nil
        
        switch newState {
        case .ProxyStateStopped:
            newColor = UIColor.red
            newTitle = "Connect"
        case .ProxyStateSearchingForConnection:
            newColor = UIColor.blue
            newTitle = "Stop Searching"
        case .ProxyStateConnected:
            newColor = UIColor.green
            newTitle = "Disconnect"
        }
        
        if (newColor != nil) || (newTitle != nil) {
            DispatchQueue.main.async(execute: {() -> Void in
                self.connectTableViewCell.backgroundColor = newColor
                self.connectButton.setTitle(newTitle, for: .normal)
                self.connectButton.setTitleColor(.white, for: .normal)
            })
        }
    }
}
