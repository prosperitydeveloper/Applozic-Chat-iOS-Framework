//
//  ALUsersTableViewCell.m
//  Applozic
//
//  Created by Alexandr Velikotskiy on 29.04.2021.
//  Copyright © 2021 applozic Inc. All rights reserved.
//

#import "ALUsersTableViewCell.h"

@implementation ALUsersTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

-(instancetype)populateCell:(ALMessage*) alMessage viewSize:(CGSize)viewSize {
    [super populateCell:alMessage viewSize:viewSize];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 20.0f;
    flowLayout.minimumInteritemSpacing = 10.0f;
    flowLayout.itemSize = CGSizeMake(40.0f, 40.0f);
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.sectionInset = UIEdgeInsetsMake(10.0f, 20.0f, 10.0f, 20.0f);
    
    CGRect rect = CGRectMake(20, 0, UIScreen.mainScreen.bounds.size.width - 20, 40);
    UICollectionView* collectionView = [[UICollectionView alloc] initWithFrame:rect collectionViewLayout:flowLayout];
    [collectionView setDataSource: self];
    [collectionView setDelegate: self];
    collectionView.backgroundColor = [UIColor greenColor];
    return self;
}

@end
