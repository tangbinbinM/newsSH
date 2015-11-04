//
//  LatestCell.h
//  BaseProject
//
//  Created by apple-jd18 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LatestCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *CellAimageView;
@property (weak, nonatomic) IBOutlet UILabel *CellATitle;
@property (weak, nonatomic) IBOutlet UILabel *CellAintro;
@property (weak, nonatomic) IBOutlet UILabel *CellAComment;

@property (weak, nonatomic) IBOutlet UILabel *CellBLongTitle;
@property (weak, nonatomic) IBOutlet UIImageView *CellBimageView;
@property (weak, nonatomic) IBOutlet UILabel *CellBComment;

@property (weak, nonatomic) IBOutlet UILabel *CellCLongTitle;
@property (weak, nonatomic) IBOutlet UIImageView *CellCimageViewA;
@property (weak, nonatomic) IBOutlet UIImageView *CellCimageViewB;
@property (weak, nonatomic) IBOutlet UIImageView *CellCimageVeiwC;
@property (weak, nonatomic) IBOutlet UILabel *CellCComment;

@property (weak, nonatomic) IBOutlet UILabel *CellDLongTitle;
@property (weak, nonatomic) IBOutlet UIButton *voideBnt;
@property (weak, nonatomic) IBOutlet UILabel *CellDComment;
@property(nonatomic,strong) NSURL *videoURL;







@end
