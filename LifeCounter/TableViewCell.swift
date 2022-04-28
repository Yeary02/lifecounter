//
//  TableViewCell.swift
//  LifeCounter
//
//  Created by 袁月 on 2022/4/27.
//

import UIKit

protocol TableViewCellProtocal {
    func minusButtonTouchUpInside(_ playerHistory: String)
    func plusButtonTouchUpInside(_ playerHistory: String)
}

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var playerNameLabel: UILabel!
    
    var player: Player!
    var delegate: TableViewCellProtocal?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        player = nil
    }
    
    func configureCell() {
        playerNameLabel.text = "\(player.name)"
        scoreLabel.text = "\(player.score)"
    }
    
    @IBAction func minusButtonTouchUpInside(_ sender: Any) {
        player.subtract(input: Int(inputTextField.text!)!)
        playerNameLabel.text = "\(player.name)"
        scoreLabel.text = "\(player.score)"
        //history.append("\(player.name) loses \(Int(inputTextField.text!)!) points")
        delegate?.minusButtonTouchUpInside("\(player.name) loses \(Int(inputTextField.text!)!) points")
    }
    
    @IBAction func plusButtonTouchUpInside(_ sender: Any) {
        player.add(input: Int(inputTextField.text!)!)
        playerNameLabel.text = "\(player.name)"
        scoreLabel.text = "\(player.score)"
        //history.append("\(player.name) wins \(Int(inputTextField.text!)!) points")
        delegate?.plusButtonTouchUpInside("\(player.name) wins \(Int(inputTextField.text!)!) points")
    }
}
