//
//  SettingsViewController.swift
//  TableViewController-Tutorial
//
//  Created by Alex Paul on 6/1/18.
//  Copyright © 2018 Alex Paul. All rights reserved.
//

import UIKit
import MapKit

class SettingsViewController: UITableViewController {
    
    // labels
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    // mapview
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setting a background color to differentiate from cells
        view.backgroundColor = .orange
        
        // set a zero height view for the footer to remove empty cells
        tableView.tableFooterView = UIView(frame: .zero)
        
        // set ui elements
        configureView()
    }
    
    func configureView() {
        nameLabel.text = "John Appleseed"
        emailLabel.text = "appleseed@test.com"
        phoneLabel.text = "555-456-5688"
        
        // set the center of the map to New York
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2DMake(40.6974034,-74.1197636)
        
        mapView.setCenter(annotation.coordinate, animated: true)
        mapView.addAnnotation(annotation)
        
    }
}
