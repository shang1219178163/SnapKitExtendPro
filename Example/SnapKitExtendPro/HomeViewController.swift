//
//  HomeViewController.swift
//  SnapKitExtendPro
//
//  Created by shang1219178163 on 09/20/2020.
//  Copyright (c) 2020 shang1219178163. All rights reserved.
//

import UIKit
import SwiftExpand

class HomeViewController: UIViewController {
    //MARK: -lazy
    lazy var tableView: UITableView = {
        let view: UITableView = UITableView.create(self.view.bounds, style: .plain, rowHeight: 50)
        view.dataSource = self
        view.delegate = self

        return view
    }()
    
        lazy var list: [[[String]]] = {
            var array: [[[String]]] = [
                [

                ],
                [
                ["九宫格2", "UITableViewCellSudokuButton", " 180.0", "", "recharge", ],
                ["九宫格2", "UITableViewCellSudokuButtonReverse", " 180.0", "", "recharge", ],
                ],

            ]
            return array
        }()
    // MARK: -life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        title = "主界面"
//        title = NSLocalizedString("主界面", comment: "")
        title = Bundle.localizedString(forKey: "主界面")
        view.addSubview(tableView);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionList = list[section]
        return sectionList.count;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let sectionList = list[indexPath.section]
        let itemList = sectionList[indexPath.row]
        let height = itemList[2].cgFloatValue
        return height
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionList = list[indexPath.section]
        let itemList = sectionList[indexPath.row]
        let value0 = itemList[0]
        let value1 = itemList[1]
        let value2 = itemList[2]
        let value3 = itemList[3]
        let value4 = itemList[4]
        
        switch value1 {
        case "UITableViewCellSudokuButton":
            let cell = UITableViewCellSudokuButton.dequeueReusableCell(tableView);
//            cell.accessoryType = .disclosureIndicator
            cell.numOfRow = 3
            cell.row = 3
            cell.itemType = NNButton.self
//            cell.items.forEach { $0.setTitleColor(.systemBlue, for: .normal)}
            cell.items.forEach {

                guard let sender = $0 as? NNButton else { return }
                sender.direction = .top
                sender.setImage(UIImage(named: "btn_selected_YES"), for: .normal)

                sender.addActionHandler({ control in
                    guard let sender = control as? UIButton else { return }
                    DDLog(sender.tag)
                    
                }, for: .touchUpInside)
            }
            
            cell.dividerColor = .red
            cell.dividerWidth = 2
            cell.dividerSpacing = 10
            
            cell.getViewLayer();
            return cell;
            
        case "UITableViewCellSudokuButtonReverse":
            let cell = UITableViewCellSudokuButtonReverse.dequeueReusableCell(tableView);
//            cell.accessoryType = .disclosureIndicator
            cell.numOfRow = 3
            cell.row = 2
            cell.itemType = NNButton.self
//            cell.items.forEach { $0.setTitleColor(.systemBlue, for: .normal)}
            cell.items.forEach {

                guard let sender = $0 as? NNButton else { return }
                sender.direction = .top
                sender.setImage(UIImage(named: "btn_selected_YES"), for: .normal)

                sender.addActionHandler({ control in
                    guard let sender = control as? UIButton else { return }
                    DDLog(sender.tag)
                    
                }, for: .touchUpInside)
            }
            
            cell.dividerColor = .red
            cell.dividerWidth = 2
            cell.dividerSpacing = 10
            
            cell.getViewLayer();
            return cell;
        default:
            break
        }
        let cell = UITableViewCell.dequeueReusableCell(tableView, identifier: "UITableViewCellValue1", style: .value1)
        cell.textLabel?.font = UIFont.systemFont(ofSize: 15)
        cell.textLabel?.textColor = UIColor.textColor3;

        cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 15)
        cell.detailTextLabel?.textColor = UIColor.theme
        cell.accessoryType = .disclosureIndicator;
        
        cell.textLabel?.text = value0
        
        cell.textLabel?.highlightedTextColor = UIColor.red
        cell.textLabel?.isHighlighted = false
        
        let fileTitles: [String] = value3.components(separatedBy: ",")
        cell.detailTextLabel?.text = fileTitles.first!
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30;
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel(frame: .zero);
        label.backgroundColor = .background;
        label.textColor = UIColor.orange
        label.font = UIFont.systemFont(ofSize: 12)
        label.text = "header\(section)";
        
        switch section {
        case 1:
            label.text = kBlankOne + "通用Cell视图"
        default:
            label.text = kBlankOne + "定制Cell视图"
        }
        return label;
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.01;
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView();
    }
    //编辑菜单
    func tableView(_ tableView: UITableView, shouldShowMenuForRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    func tableView(_ tableView: UITableView, canPerformAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, performAction action: Selector, forRowAt indexPath: IndexPath, withSender sender: Any?) {
        DDLog(action)
    }
        
}
