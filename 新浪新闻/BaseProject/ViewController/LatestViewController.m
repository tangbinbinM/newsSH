//
//  LatestViewController.m
//  BaseProject
//
//  Created by apple-jd18 on 15/11/2.
//  Copyright © 2015年 Tarena. All rights reserved.
//

#import "LatestViewController.h"
#import "LatestCell.h"
#import "latestViewModel.h"
#import "ScrollDisplayViewController.h"
@interface LatestViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)latestViewModel *latestVM;
@end

@implementation LatestViewController
-(latestViewModel *)latestVM{
    if (!_latestVM) {
        _latestVM = [[latestViewModel alloc] initWithNewsListType:_type];
    }
    return _latestVM;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

//tableView//
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.latestVM.rowNumber;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([self.latestVM videoURLForRow:indexPath.row] != nil) {
        LatestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellD"];
        cell.CellDLongTitle.text = [self.latestVM titleForRow:indexPath.row];
        cell.CellDComment.text = [self.latestVM commentNumberForRow:indexPath.row];
        [cell.voideBnt setBackgroundImageForState:0 withURL:[self.latestVM iconURLForRow:indexPath.row]];
        cell.videoURL = [self.latestVM videoURLForRow:indexPath.row];
        return cell;
    }else if ([self.latestVM totalForRow:indexPath.row] >= 3){
        LatestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellC"];
        cell.CellCLongTitle.text = [self.latestVM longTitleForRow:indexPath.row];
        cell.CellCComment.text = [self.latestVM commentNumberForRow:indexPath.row];
        [cell.CellCimageViewA setImageWithURL:[self.latestVM iconURLForRow:indexPath.row]];
        return cell;
    }else{
        LatestCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellA"];
        cell.CellATitle.text = [self.latestVM titleForRow:indexPath.row];
        cell.CellAintro.text = [self.latestVM introForRow:indexPath.row];
        cell.CellAComment.text = [self.latestVM introForRow:indexPath.row];
        [cell.CellCimageViewA setImageWithURL:[self.latestVM iconURLForRow:indexPath.row]];
        return cell;
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
