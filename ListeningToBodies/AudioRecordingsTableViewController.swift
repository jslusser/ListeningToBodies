//
//  AudioRecordingsTableViewController.swift
//  ListeningToBodies
//
//  Created by James Slusser on 5/29/19.
//  Copyright © 2019 James Slusser. All rights reserved.
//

import UIKit

class AudioRecordingsTableViewController: UITableViewController {

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
        return 4
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "BS1" {
            let detailViewController = segue.destination as! AudioPlayerViewController
            detailViewController.audioFileURL = Bundle.main.url(forResource: "body_scan_1", withExtension: "mp3")
        }
        
        if segue.identifier == "BS2" {
            let detailViewController = segue.destination as! AudioPlayerViewController
            detailViewController.audioFileURL = Bundle.main.url(forResource: "Body_Scan_2", withExtension: "mp3")
        }
        
        
        if segue.identifier == "BS3" {
            let detailViewController = segue.destination as! AudioPlayerViewController
            detailViewController.audioFileURL = Bundle.main.url(forResource: "Levels_of_Breathing_and_How_They_Feel", withExtension: "mp3")
        }
        
        if segue.identifier == "BS4" {
            let detailViewController = segue.destination as! AudioPlayerViewController
            detailViewController.audioFileURL = Bundle.main.url(forResource: "Breathing_to_Stimulate_the_Vagus_Nerve", withExtension: "mp3")
        }
    }
    
}
