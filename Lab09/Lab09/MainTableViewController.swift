//
//  MainTableViewController.swift
//  Lab09
//
//  Created by SWUCOMPUTER on 30/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//
import CoreData
import UIKit

class MainTableViewController: UITableViewController {

    var ideaArray: [NSManagedObject] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    func getContext () -> NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    // View가 보여질 때 자료를 DB에서 가져오도록 한다 override func viewDidAppear(_ animated: Bool) {
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let context = self.getContext()
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Idea")
        
        let sortDescriptor = NSSortDescriptor(key: "ideaTitle", ascending: true)
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        do {
            ideaArray = try context.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)") }
        self.tableView.reloadData()
    }


    // MARK: - Table view data source


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ideaArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Main Cell", for: indexPath)

        let idea = ideaArray[indexPath.row]
        var display: String = ""
        
        
        if let titleLabel = idea.value(forKey: "ideaTitle") as? String {
            display = titleLabel }
        if let dateLabel = idea.value(forKey: "ideaDate") as? Date{
            
            let formatter:DateFormatter = DateFormatter()
            formatter.dateFormat = "yyyy-mm-dd h:mm a"
            display = formatter.string(from: dateLabel as Date)
        }
        
        
        cell.textLabel?.text = display
        cell.detailTextLabel?.text = idea.value(forKey: "ideaTitle") as? String
    

        return cell
    }
    

    
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
 

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            if editingStyle == .delete {
                // Delete the row from the data source
                let context = getContext()
                context.delete(ideaArray[indexPath.row])
                do{
                    try context.save()
                    print("deleted!")
                }catch let error as NSError{
                    print(error.userInfo)
                }
                
                ideaArray.remove(at: indexPath.row)
            
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    

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
}
