## TableViewController Tutorial

## Objective 

This app is built to demonstrate adding a UITableViewController to your app add static UITableViewCell's. This feature is similar to achieveing the look of a Settings screen similar to the iPhone Settings screen. In such a table view the cells are pre-determined so static cells are used.

Drag a Table View Controller onto your Main.storyboard 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/drag-table-view-controller.png" width="1080" height="624" />
</p>


Create a subclass of UITableViewController and name the new file SettingsViewController. 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/new-file-settings-view-controller.png" width="729" height="523" />
</p>

Edit the SettingsViewController to look like this
```swift
import UIKit
class SettingsViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
```

Set the class name in the Identiy inspector to the newly create SettingsViewController subclass of the generic UITableViewController.

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/set-class-name-storyboard.png" width="728" height="872" />
</p>

Drag a Navigation Item control to the SettingsViewController storyboard then name the title "Settings".

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/drag-navigation-item-to-settings-view-controller.png" width="758" height="888" />
</p>


Change the Table View content from **Dynamic Prototypes** to Static Cells in the **Attributes Inspector**.  

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/dynamic-to-static-cells.png" width="817" height="877" />
</p>

If needed base on your design you can change the number of sections the Table View contains in the Main.storyboad

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/change-number-sections-storyboard.png" width="1407" height="663" />
</p>

The Table View cells, sections can be edited in the Document outline of Xcode. 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/edit-table-view-document-outline.png" width="1111" height="935" />
</p>

The cells row size can be customized in the **Size inspector** 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/change-row-height-size-inpector.png" width="786" height="808" />
</p>

Updated SettingsViewController 

```swift 
import UIKit
class SettingsViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // setting a background color to differentiate from cells
        view.backgroundColor = .orange
    
        // set a zero height view for the footer to remove empty cells
        tableView.tableFooterView = UIView(frame: .zero)
    }
}
```

Drag a Map Kit View over to the Map Cell. Set the constraints to all the edges of the cell at value 0. 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/map-view-contraints.png" width="900" height="821" />
</p>


Drag six UILabel controls to represent a Name, Email, Phone attribute for a fictional Person object.

Key Label constraints are set up as follows: 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/key-label-constraints.png" width="832" height="701" />
</p>

Value label constraints are set up as follows: 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/value-constraints.png" width="860" height="697" />
</p>

Error due to MKMapView being undeclared. We need to import MapKit 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/error-undeclared-type-mkmapview.png" width="542" height="398" />
</p>

After importing MapKit the updated SettingsViewController should be as below: 

```swift 
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
```

Control-drag UILabels to the SettingViewController 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/drag-label-outlets.png" width="1078" height="744" />
</p>

Control-drag the MapView to the SettingsViewController 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/drag-map-view-outlet.png" width="1078" height="744" />
</p>

The completed Main.storyboard 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/completed-storyboard.png" weight="970" height="462" />
</p>


Completed look of our SettingsViewController 
<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/completed-settings.png" width="312" height="541" />
</p>
