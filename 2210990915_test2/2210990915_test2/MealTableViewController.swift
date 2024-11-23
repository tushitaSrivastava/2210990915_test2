//
//  MealTableViewController.swift
//  2210990915_test2
//
//  Created by student-2 on 23/11/24.
//

import UIKit

class MealTableViewController: UITableViewController {
    var recipes = [Recipe]()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Meals"
    }
    
    
    @IBSegueAction func AddEditSegue(_ coder: NSCoder, sender: Any?) -> EditedMealListTableViewController? {
        guard let cell = sender as? UITableViewCell, let indexPath = tableView.indexPath(for: cell) else {
            return EditedMealListTableViewController(coder: coder, meal: nil)
        }
        return EditedMealListTableViewController(coder: coder, meal: recipes[indexPath.row])
    }
    
    

       @IBAction func unwindToMealTableViewController(segue: UIStoryboardSegue) {
           if segue.identifier == "cancelSegue" {
               return
           }
           if let source = segue.source as? EditedMealListTableViewController, let meal = source.meal {
               if let indexPath = tableView.indexPathForSelectedRow {
                   recipes[indexPath.row] = meal
                   tableView.reloadRows(at: [indexPath], with: .none)
               } else {
                   recipes.append(meal)
                   let index = IndexPath(row: recipes.count - 1, section: 0)
                   tableView.insertRows(at: [index], with: .none)
               }
           }
       }
    override func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }

        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return recipes.count
        }

        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! MealListTableViewCell
            let recipe = recipes[indexPath.row]
            cell.updateUI(meal: recipe)
            return cell
        }

        override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
            print(recipes[indexPath.row].instructions) // Print meal instructions
        }

        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(recipes[indexPath.row].time) // Print meal time
        }

        override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
            return .delete
        }

        override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                recipes.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
            }
        }

        override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
            let movedRecipe = recipes.remove(at: fromIndexPath.row)
            recipes.insert(movedRecipe, at: to.row)
        }
    }
