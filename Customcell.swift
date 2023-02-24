

import UIKit



class Customcell: UITableViewCell , UICollectionViewDelegate , UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var cellcontent : [String] = []

    
    let cview : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 5
        layout.minimumInteritemSpacing = 5
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
//        cv.backgroundColor = .systemRed
        return cv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .green

        contentView.addSubview(cview)
        cview.dataSource = self
        cview.delegate  = self
        
        NSLayoutConstraint.activate([

            cview.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cview.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cview.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            cview.widthAnchor.constraint(equalTo: contentView.widthAnchor)
        ])
        }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cellcontent.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .blue
        for sub in cell.contentView.subviews
        {
            sub.removeFromSuperview()
        }
        let cellLabel : UILabel = {
            let label1 = UILabel()
            label1.text = cellcontent[indexPath.row]
            label1.textColor = .systemBackground
            label1.translatesAutoresizingMaskIntoConstraints = false
            label1.font = UIFont.systemFont(ofSize: 24,weight: .bold)
            return label1
        }()
        cell.contentView.addSubview(cellLabel)
        
        NSLayoutConstraint.activate([
            cellLabel.centerXAnchor.constraint(equalTo: cell.contentView.centerXAnchor),
            cellLabel.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor)
        ])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 80, height: 80)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("collectionview cell \(indexPath.item)")
    }
}



