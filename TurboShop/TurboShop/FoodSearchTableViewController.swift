//
//  FoodSearchTableViewController.swift
//  TurboShop
//
//  Created by Xander Eagle on 5/30/20.
//  Copyright © 2020 Xander Eagle. All rights reserved.
//

import UIKit

class FoodSearchTableViewController: UITableViewController {
    
    var food: [Food] = [
        Food(symbol: "HARRIS TEETER", name: "", location: "Olney, MD"),
        Food(symbol: "Sushi", name: " ", location: ""),
        Food(symbol: "🍣", name: "Tuna Sashimi", location: "Sushi"),
        Food(symbol: "🥟", name: "Beef Dumpling", location: "Sushi"),
        Food(symbol: "🍤", name: "Shrimp Tampura", location: "Sushi"),
        Food(symbol: "Deli", name: " ", location: "Sliced Meats"),
        Food(symbol: "🥠", name: "Boar's Head Sliced Turkey", location: "Deli"),
        Food(symbol: "🥠", name: "Boar's Head Honey Ham", location: "Deli"),
        Food(symbol: "🥠", name: "Harris Teeter Salami", location: "Deli"),
        Food(symbol: "Bakery", name: " ", location: "Bread, Sweets, Baked Goods"),
        Food(symbol: "🍩", name: "Krispie Kreme Chocolate Donuts", location: "Bakery"),
        Food(symbol: "🧁", name: "Mini Cupcakes", location: "Bakery"),
        Food(symbol: "🍞", name: "Martin's Potatoe Bread", location: "Bakery, Right Side Wall"),
        Food(symbol: "🍕", name: "Hot Fresh Pizza", location: "Bakery"),
        Food(symbol: "🧀", name: "Cheddar Cheese", location: "Bakery"),
        Food(symbol: "Produce", name: " ", location: "Fruits and Vegetables"),
        Food(symbol: "🍌", name: "Chiquita Banana", location: "Produce, Left Center"),
        Food(symbol: "🍎🍏", name: "Apples", location: "Produce, Center"),
        Food(symbol: "🥦", name: "Brocoli", location: "Produce, Right Side"),
        Food(symbol: "🥬", name: "Iceberg Lettuce", location: "Produce, Right Side"),
        Food(symbol: "Aisle 1", name: " ", location: "Salad Dressings, Package Dinners, Rice, International"),
        Food(symbol: "🥒", name: "Woodstock Pickles", location: "Aisle 1, Left Side"),
        Food(symbol: "🍚", name: "Jasmine Rice", location: "Aisle 1, Right Side"),
        Food(symbol: "🍜", name: "Asian Rice Noodles", location: "Aisle 1, Right Side"),
        Food(symbol: "Aisle 2", name: " ", location: "School Supplies, Snacks, Soup, Canned Goods"),
        Food(symbol: "📓", name: "Composition Journal", location: "Aisle 2, Left Side"),
        Food(symbol: "🍪", name: "Chips Ahoy Chocolate Chip Cookies", location: "Aisle 2, Right Side"),
        Food(symbol: "🍜", name: "Chicken Noodle Soup", location: "Aisle 2, Left Side"),
        Food(symbol: "🥫", name: "Canned Tomatoes", location: "Aisle 2, Right Side"),
        Food(symbol: "Butcher and Meats", name: " ", location: " "),
        Food(symbol: "🐟", name: "Salmon", location: "Butcher"),
        Food(symbol: "🐄", name: "Ground Beef", location: "Meats"),
        Food(symbol: "🥓", name: "Bacon", location: "Meats"),
        Food(symbol: "🥩", name: "Organic Harris Teeter Steak", location: "Meats"),
        Food(symbol: "Aisle 3", name: "", location: "Cereal, Oatmeal, Pancake Mixes, Lunchbox Items"),
        Food(symbol: "🥣", name: "Lucky Charms", location: "Aisle 3, Right Side"),
        Food(symbol: "🥣", name: "Quaker Oats", location: "Aisle 3, Left Side"),
        Food(symbol: "Aisle 4", name: " ", location: "Tea, Coffee, Spices, Baking Needs, Candy"),
        Food(symbol: "🍬", name: "Jolly Rancher", location: "Aisle 4, Right Side"),
        Food(symbol: "🍵", name: "Tazo Green Tea", location: "Aisle 4, Left Side"),
        Food(symbol: "☕️", name: "Dark Roast Coffe Beans", location: "Aisle 4, Left Side"),
        Food(symbol: "Aisle 5", name: " ", location: "Chips, Crackers, Nuts, Popcorn, Jerky"),
        Food(symbol: "🥜", name: "Lightly Salted Peanuts", location: "Aisle 5, Right Side"),
        Food(symbol: "🐄🥠", name: "Beef Jerky", location: "Aisle 5, Left Side"),
        Food(symbol: "Aisle 6", name: " ", location: "Mixes, Soda, Water, Sparkling Water"),
        Food(symbol: "🥤", name: "Coca-Cola", location: "Aisle 6, Left Side"),
        Food(symbol: "🍹", name: "Gatorade", location: "Aisle 6, Right Side"),
        Food(symbol: " 💧 ", name: "LaCroix", location: "Aisle 6, Left Side"),
        Food(symbol: "Aisle 7", name: " ", location: "Hardware, Cat and Dog Stuff, Light Bulbs"),
        Food(symbol: "🦴", name: "Dog Bone", location: "Aisle 7, Right Side"),
        Food(symbol: "💡", name: "Light Bulb", location: "Aisle 7, Left Side"),
        Food(symbol: "Aisle 8", name: " ", location: "Household, Paper Towels, Toilet Paper, Laundry"),
        Food(symbol: "🧻", name: "Charmin Toilet Paper", location: "Aisle 8, Left Side"),
        Food(symbol: "🧴", name: "SoftSoap Hand Soap", location: "Aisle 8"),
        Food(symbol: "🧫", name: "Tide Pods", location: "Aisle 8, Right Side"),
        Food(symbol: "Aisle 9", name: " ", location: "Garbage Bags, Food Storage, Air Filters"),
        Food(symbol: "🗑", name: "Garbage Bag", location: "Aisle 9, Right Side"),
        Food(symbol: "Aisle 10", name: " ", location: "Toothpaste, Eye-Care, Shampoo"),
        Food(symbol: "🧴", name: "Old Spice Shampoo", location: "Aisle 10"),
        Food(symbol: "Aisle 11", name: " ", location: "Candles, Nail Care, Cosmetics, Greeting Cards"),
        Food(symbol: "📨", name: "Hallmark Birthday Cards", location: "Aisle 9, Right Side"),
        Food(symbol: "Aisle 12", name: "", location: "Packaged Kosher, Butter, Margaine"),
        Food(symbol: "Pharmacy", name: " ", location: "Presciption Medication"),
        Food(symbol: "💊", name: "Tylenol", location: "Pharmacy, 1st Aisle - Right Side"),
        Food(symbol: "🖍", name: "Chapstick", location: "Pharmacy, 2nd Aisle - Right Side"),
        Food(symbol: "Frozen", name: " ", location: "Frozen Foods, Novelties"),
        Food(symbol: "🍦", name: "Breyer's Ice Cream", location: "Freezer, Left Side"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FoodItem", for: indexPath)

        // Configure the cell...
        let foodItem = food[indexPath.row]
        cell.textLabel?.text = foodItem.symbol + " - " + foodItem.name
        cell.detailTextLabel?.text = foodItem.location
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


