//
//  ViewController.swift
//  MTBScan
//
//  Created by qs on 2016/11/19.
//  Copyright © 2016年 YBX. All rights reserved.
//

import UIKit
import MTBBarcodeScanner

class ViewController: UIViewController {
    var scanRectView:UIView!
    
    @IBOutlet weak var previewView: UIView!
    var scanner: MTBBarcodeScanner?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        scanner = MTBBarcodeScanner(previewView: previewView)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        //  perform(#selector(LBXScanViewController.startScan), with: nil, afterDelay: 0.3)
        
        
        
        self.scanner?.startScanning(resultBlock: { codes in
            let codeObjects = codes as! [AVMetadataMachineReadableCodeObject]?
            for code in codeObjects! {
                // let stringValue = code.stringValue!
                if  let stringValue = code.stringValue {
                    print("Found code: \(stringValue)")
                    //self.scanSuccess(result: stringValue)
                    
                   // return
                }
                
                
            }
            
        }, error: nil)
        
        
    }


}

