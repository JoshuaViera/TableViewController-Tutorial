## TableViewController Tutorial

## Objective 

This app is built to demonstrate adding a UITableViewController to your app add static UITableViewCell's. This feature is similar to achieveing the look of a Settings screen similar to the iPhone Settings screen. In such a table view the cells are pre-determined so static cells are used.

Drag a Table View Controller onto your Main.storyboard 

<p align="center">
<img src="https://github.com/alexpaul/TableViewController-Tutorial/blob/master/Images/drag-table-view-controller.png" width="1080" height="781" />
</p>


Create a subclass of UITableViewController and name the new file SettingsViewController. 

<p align="center">
<img src="" width="" height="" />
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
<img src="" width="" height="" />
</p>

Drag a Navigation Item control to the SettingsViewController storyboard then name the title "Settings".

<p align="center">
<img src="" width="" height="" />
</p>


Change the Table View content from **Dynamic Prototypes** to Static Cells in the **Attributes Inspector**.  

<p align="center">
<img src="" width="" height="" />
</p>

If needed base on your design you can change the number of sections the Table View contains in the Main.storyboad

<p align="center">
<img src="" width="" height="" />
</p>

The Table View cells, sections can be edited in the Document outline of Xcode. 

<p align="center">
<img src="" width="" height="" />
</p>

The cells row size can be customized in the **Size inspector** 

<p align="center">
<img src="" width="" height="" />
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
<img src="" width="" height="" />
</p>


Drag six UILabel controls to represent a Name, Email, Phone attribute for a fictional Person object.

<p align="center">
<img src="" width="" height="" />
</p>

Key Label constraints are set up as follows: 

<p align="center">
<img src="" width="" height="" />
</p>

Value label constraints are set up as follows: 

<p align="center">
<img src="" width="" height="" />
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













<p align="center">
<img src="" width="" height="" />
</p>
