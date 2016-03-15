//
//  TableViewController.swift
//  100Percent
//
//  Created by Justin on 7/12/15.
//  Copyright (c) 2015 Good Enough LLC. All rights reserved.
//

import UIKit
import AudioToolbox
import AVFoundation

class TableViewController: UITableViewController {

    @IBOutlet var BatteryLevelLabel: UILabel!
    @IBOutlet var ChargeAlertCell: UITableViewCell!
    @IBOutlet var PercentChargedAlertToggle: UISwitch!
    @IBAction func PercentChargedAlertToggle(sender: AnyObject) {
        if PercentChargedAlertToggle.on{
            //AlerToneCell.hidden = false
            
        }else{
            //AlerToneCell.hidden = true
            
            let notBuiltYetAlert = UIAlertController(title: "Not Built Yet", message: "Sorry, this feature hasn't been built yet.", preferredStyle: UIAlertControllerStyle.Alert)
            
            notBuiltYetAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                // sets the toggle back to ON
                self.PercentChargedAlertToggle.setOn(true, animated: true)
            }))
            
            presentViewController(notBuiltYetAlert, animated: true, completion: nil)
        }
        
    }
    @IBOutlet var AlerToneCell: UITableViewCell!
    @IBOutlet var AlertToneNameLabel: UILabel!
    @IBOutlet var batteryImage: UIImageView!
    
    var audioPlayer: AVAudioPlayer! // Global variable
    
    func playChargedTone() {
        do {
            self.audioPlayer =  try AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lmTheme", ofType: "mp3")!))
            self.audioPlayer.play()
            
        } catch {
            let noSoundFound = UIAlertController(title: "No Sound File Found", message: "Your battery is 100% charged, but no audio file was found.", preferredStyle: UIAlertControllerStyle.Alert)
            noSoundFound.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in }))

            print("No audio file found")
        }
    }
    
    // Grab the sounds path
//    var chargedTone = NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lmTheme", ofType: "mp3")!)
//    var audioPlayer = AVAudioPlayer()
    
    
    // function to return the devices battery level
    func batteryLevel()-> Float {
        return UIDevice.currentDevice().batteryLevel
    }
    
    // function to return the devices battery state (Unknown, Unplugged, Charging, or Full)
    func batteryState()-> UIDeviceBatteryState {        
        return UIDevice.currentDevice().batteryState
    }
    
    // function to update the battery progress image
    func batteryChargedImage(){
        switch batteryLevel(){
        case 0.00:
            batteryImage.image = UIImage(named: "battery00")
            print("\(batteryLevel())")
        case 0.01:
            batteryImage.image = UIImage(named: "battery1")
            print("\(batteryLevel())")
        case 0.02:
            batteryImage.image = UIImage(named: "battery2")
            print("\(batteryLevel())")
        case 0.03:
            batteryImage.image = UIImage(named: "battery3")
            print("\(batteryLevel())")
        case 0.04:
            batteryImage.image = UIImage(named: "battery4")
            print("\(batteryLevel())")
        case 0.05:
            batteryImage.image = UIImage(named: "battery5")
            print("\(batteryLevel())")
        case 0.06:
            batteryImage.image = UIImage(named: "battery6")
            print("\(batteryLevel())")
        case 0.07:
            batteryImage.image = UIImage(named: "battery7")
            print("\(batteryLevel())")
        case 0.08:
            batteryImage.image = UIImage(named: "battery8")
            print("\(batteryLevel())")
        case 0.09:
            batteryImage.image = UIImage(named: "battery9")
            print("\(batteryLevel())")
        case 0.10:
            batteryImage.image = UIImage(named: "battery10")
            print("\(batteryLevel())")
        case 0.11:
            batteryImage.image = UIImage(named: "battery11")
            print("\(batteryLevel())")
        case 0.12:
            batteryImage.image = UIImage(named: "battery12")
            print("\(batteryLevel())")
        case 0.13:
            batteryImage.image = UIImage(named: "battery13")
            print("\(batteryLevel())")
        case 0.14:
            batteryImage.image = UIImage(named: "battery14")
            print("\(batteryLevel())")
        case 0.15:
            batteryImage.image = UIImage(named: "battery15")
            print("\(batteryLevel())")
        case 0.16:
            batteryImage.image = UIImage(named: "battery16")
            print("\(batteryLevel())")
        case 0.17:
            batteryImage.image = UIImage(named: "battery17")
            print("\(batteryLevel())")
        case 0.18:
            batteryImage.image = UIImage(named: "battery18")
            print("\(batteryLevel())")
        case 0.19:
            batteryImage.image = UIImage(named: "battery19")
            print("\(batteryLevel())")
        case 0.20:
            batteryImage.image = UIImage(named: "battery20")
            print("\(batteryLevel())")
        case 0.21:
            batteryImage.image = UIImage(named: "battery21")
            print("\(batteryLevel())")
        case 0.22:
            batteryImage.image = UIImage(named: "battery22")
            print("\(batteryLevel())")
        case 0.23:
            batteryImage.image = UIImage(named: "battery23")
            print("\(batteryLevel())")
        case 0.24:
            batteryImage.image = UIImage(named: "battery24")
            print("\(batteryLevel())")
        case 0.25:
            batteryImage.image = UIImage(named: "battery25")
            print("\(batteryLevel())")
        case 0.26:
            batteryImage.image = UIImage(named: "battery26")
            print("\(batteryLevel())")
        case 0.27:
            batteryImage.image = UIImage(named: "battery27")
            print("\(batteryLevel())")
        case 0.28:
            batteryImage.image = UIImage(named: "battery28")
            print("\(batteryLevel())")
        case 0.29:
            batteryImage.image = UIImage(named: "battery29")
            print("\(batteryLevel())")
        case 0.30:
            batteryImage.image = UIImage(named: "battery30")
            print("\(batteryLevel())")
        case 0.31:
            batteryImage.image = UIImage(named: "battery31")
            print("\(batteryLevel())")
        case 0.32:
            batteryImage.image = UIImage(named: "battery32")
            print("\(batteryLevel())")
        case 0.33:
            batteryImage.image = UIImage(named: "battery33")
            print("\(batteryLevel())")
        case 0.34:
            batteryImage.image = UIImage(named: "battery34")
            print("\(batteryLevel())")
        case 0.35:
            batteryImage.image = UIImage(named: "battery35")
            print("\(batteryLevel())")
        case 0.36:
            batteryImage.image = UIImage(named: "battery36")
            print("\(batteryLevel())")
        case 0.37:
            batteryImage.image = UIImage(named: "battery37")
            print("\(batteryLevel())")
        case 0.38:
            batteryImage.image = UIImage(named: "battery38")
            print("\(batteryLevel())")
        case 0.39:
            batteryImage.image = UIImage(named: "battery39")
            print("\(batteryLevel())")
        case 0.40:
            batteryImage.image = UIImage(named: "battery40")
            print("\(batteryLevel())")
        case 0.41:
            batteryImage.image = UIImage(named: "battery41")
            print("\(batteryLevel())")
        case 0.42:
            batteryImage.image = UIImage(named: "battery42")
            print("\(batteryLevel())")
        case 0.43:
            batteryImage.image = UIImage(named: "battery43")
            print("\(batteryLevel())")
        case 0.44:
            batteryImage.image = UIImage(named: "battery44")
            print("\(batteryLevel())")
        case 0.45:
            batteryImage.image = UIImage(named: "battery45")
            print("\(batteryLevel())")
        case 0.46:
            batteryImage.image = UIImage(named: "battery46")
            print("\(batteryLevel())")
        case 0.47:
            batteryImage.image = UIImage(named: "battery47")
            print("\(batteryLevel())")
        case 0.48:
            batteryImage.image = UIImage(named: "battery48")
            print("\(batteryLevel())")
        case 0.49:
            batteryImage.image = UIImage(named: "battery49")
            print("\(batteryLevel())")
        case 0.50:
            batteryImage.image = UIImage(named: "battery50")
            print("\(batteryLevel())")
        case 0.51:
            batteryImage.image = UIImage(named: "battery51")
            print("\(batteryLevel())")
        case 0.52:
            batteryImage.image = UIImage(named: "battery52")
            print("\(batteryLevel())")
        case 0.53:
            batteryImage.image = UIImage(named: "battery53")
            print("\(batteryLevel())")
        case 0.54:
            batteryImage.image = UIImage(named: "battery54")
            print("\(batteryLevel())")
        case 0.55:
            batteryImage.image = UIImage(named: "battery55")
            print("\(batteryLevel())")
        case 0.56:
            batteryImage.image = UIImage(named: "battery56")
            print("\(batteryLevel())")
        case 0.57:
            batteryImage.image = UIImage(named: "battery57")
            print("\(batteryLevel())")
        case 0.58:
            batteryImage.image = UIImage(named: "battery58")
            print("\(batteryLevel())")
        case 0.59:
            batteryImage.image = UIImage(named: "battery59")
            print("\(batteryLevel())")
        case 0.60:
            batteryImage.image = UIImage(named: "battery60")
            print("\(batteryLevel())")
        case 0.61:
            batteryImage.image = UIImage(named: "battery61")
            print("\(batteryLevel())")
        case 0.62:
            batteryImage.image = UIImage(named: "battery62")
            print("\(batteryLevel())")
        case 0.63:
            batteryImage.image = UIImage(named: "battery63")
            print("\(batteryLevel())")
        case 0.64:
            batteryImage.image = UIImage(named: "battery64")
            print("\(batteryLevel())")
        case 0.65:
            batteryImage.image = UIImage(named: "battery65")
            print("\(batteryLevel())")
        case 0.66:
            batteryImage.image = UIImage(named: "battery66")
            print("\(batteryLevel())")
        case 0.67:
            batteryImage.image = UIImage(named: "battery67")
            print("\(batteryLevel())")
        case 0.68:
            batteryImage.image = UIImage(named: "battery68")
            print("\(batteryLevel())")
        case 0.69:
            batteryImage.image = UIImage(named: "battery69")
            print("\(batteryLevel())")
        case 0.70:
            batteryImage.image = UIImage(named: "battery70")
            print("\(batteryLevel())")
        case 0.71:
            batteryImage.image = UIImage(named: "battery71")
            print("\(batteryLevel())")
        case 0.72:
            batteryImage.image = UIImage(named: "battery72")
            print("\(batteryLevel())")
        case 0.73:
            batteryImage.image = UIImage(named: "battery73")
            print("\(batteryLevel())")
        case 0.74:
            batteryImage.image = UIImage(named: "battery74")
            print("\(batteryLevel())")
        case 0.75:
            batteryImage.image = UIImage(named: "battery75")
            print("\(batteryLevel())")
        case 0.76:
            batteryImage.image = UIImage(named: "battery76")
            print("\(batteryLevel())")
        case 0.77:
            batteryImage.image = UIImage(named: "battery77")
            print("\(batteryLevel())")
        case 0.78:
            batteryImage.image = UIImage(named: "battery78")
            print("\(batteryLevel())")
        case 0.79:
            batteryImage.image = UIImage(named: "battery79")
            print("\(batteryLevel())")
        case 0.80:
            batteryImage.image = UIImage(named: "battery80")
            print("\(batteryLevel())")
        case 0.81:
            batteryImage.image = UIImage(named: "battery81")
            print("\(batteryLevel())")
        case 0.82:
            batteryImage.image = UIImage(named: "battery82")
            print("\(batteryLevel())")
        case 0.83:
            batteryImage.image = UIImage(named: "battery83")
            print("\(batteryLevel())")
        case 0.84:
            batteryImage.image = UIImage(named: "battery84")
            print("\(batteryLevel())")
        case 0.85:
            batteryImage.image = UIImage(named: "battery85")
            print("\(batteryLevel())")
        case 0.86:
            batteryImage.image = UIImage(named: "battery86")
            print("\(batteryLevel())")
        case 0.87:
            batteryImage.image = UIImage(named: "battery87")
            print("\(batteryLevel())")
        case 0.88:
            batteryImage.image = UIImage(named: "battery88")
            print("\(batteryLevel())")
        case 0.89:
            batteryImage.image = UIImage(named: "battery89")
            print("\(batteryLevel())")
        case 0.90:
            batteryImage.image = UIImage(named: "battery90")
            print("\(batteryLevel())")
        case 0.91:
            batteryImage.image = UIImage(named: "battery91")
            print("\(batteryLevel())")
        case 0.92:
            batteryImage.image = UIImage(named: "battery92")
            print("\(batteryLevel())")
        case 0.93:
            batteryImage.image = UIImage(named: "battery93")
            print("\(batteryLevel())")
        case 0.94:
            batteryImage.image = UIImage(named: "battery94")
            print("\(batteryLevel())")
        case 0.95:
            batteryImage.image = UIImage(named: "battery95")
            print("\(batteryLevel())")
        case 0.96:
            batteryImage.image = UIImage(named: "battery96")
            print("\(batteryLevel())")
        case 0.97:
            batteryImage.image = UIImage(named: "battery97")
            print("\(batteryLevel())")
        case 0.98:
            batteryImage.image = UIImage(named: "battery98")
            print("\(batteryLevel())")
        case 0.99:
            batteryImage.image = UIImage(named: "battery99")
            print("\(batteryLevel())")
        case 1.0:
            batteryImage.image = UIImage(named: "battery100")
            print("\(batteryLevel())")
        default:
            batteryImage.image = UIImage(named: "battery00")
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        // sets the correct battery level image
        batteryChargedImage()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tells the app not to allow the phone to auto-sleep when app is open
        UIApplication.sharedApplication().idleTimerDisabled = true
    
        // sets the title bar color and title text color
        let myColor = UIColor(red:0.32, green:0.83, blue:0.41, alpha:1)
        navigationController!.navigationBar.barTintColor = myColor
        navigationController!.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.whiteColor()]
        
        // hides tone cell until I can figure out how to allow users to pick their own alert tones
        AlerToneCell.hidden = false
        ChargeAlertCell.hidden = false
        
        // enables the tracking of the devices battery
        UIDevice.currentDevice().batteryMonitoringEnabled = true
        
        // enbales tracking of battery state changes (not used in this app as of yet)
        //NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("batteryStateDidChange:"), name: UIDeviceBatteryStateDidChangeNotification, object: nil)
        
        // enables tracking of battery level changes
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(TableViewController.batteryLevelDidChange(_:)), name: UIDeviceBatteryLevelDidChangeNotification, object: nil)
        
        
        // shows the battery level on the main percentage label let y = Int(floor(f))
        let batteryLevelInt = Int(floor(batteryLevel() * 100))
        BatteryLevelLabel.text = "\(batteryLevelInt)%"
        print("Device Battery Level is: \(batteryLevelInt) and the state is \(batteryState())")
        
   
    }

    
    func batteryLevelDidChange(notification: NSNotification){
        // The battery's level did change (98%, 99%, ...)
        
        // sets the correct battery level image
        batteryChargedImage()
        
        let batteryLevelInt = Int(floor(batteryLevel() * 100))
        BatteryLevelLabel.text = "\(batteryLevelInt)%"
        
        let currentBatteryLevel = batteryLevel()
        
        // shows alert when battery is 100% (1.0)
        if currentBatteryLevel == 1.0{
            
            // will vibrate and play generic tone when 100% charged
            AudioServicesPlayAlertSound(SystemSoundID(kSystemSoundID_Vibrate))
            
            // Plays my special audio when 100% charged
            //audioPlayer.play() // original play code
            playChargedTone()
            
            let chargedAlert = UIAlertController(title: "Battery Charged", message: "Your battery is 100% charged. Unplug your device so you don't over charge the battery and decrease its life.", preferredStyle: UIAlertControllerStyle.Alert)
            chargedAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                // put code here that will stop the audio from playing
                self.audioPlayer.stop()
            }))
            presentViewController(chargedAlert, animated: true, completion: nil)
        }
    }
    
//    func batteryStateDidChange(notification: NSNotification){
//        
//        BatteryStateLabel.text = "\(batteryState())"
//        print("Device Battery Level is: \(batteryLevel()) and the state is \(batteryState())")
//        
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 3{
            let notBuiltYetAlert = UIAlertController(title: "Not Built Yet", message: "Sorry, this feature hasn't been built yet.", preferredStyle: UIAlertControllerStyle.Alert)
            
            notBuiltYetAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
                print("Handle Ok logic here")
            }))
            
            presentViewController(notBuiltYetAlert, animated: true, completion: nil)
            
            // deselcts the row that was tapped
            self.tableView.deselectRowAtIndexPath(indexPath, animated: false)
            
            print("row tapped \(indexPath.row)")
        }
    }
    

//    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        // #warning Potentially incomplete method implementation.
//        // Return the number of sections.
//        return 0
//    }
//
//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete method implementation.
//        // Return the number of rows in the section.
//        return 0
//    }
    

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        cell setLayoutMargins:UIEdgeInsetsZero

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}

