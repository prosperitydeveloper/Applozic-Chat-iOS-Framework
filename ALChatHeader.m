//
//  ALChatHeader.m
//  Applozic
//
//  Created by Alexandr Velikotskiy on 26.04.2021.
//  Copyright © 2021 applozic Inc. All rights reserved.
//

#import "ALChatHeader.h"

@implementation ALChatHeader

- (instancetype)initWithReuseIdentifier:(NSString *)reuseIdentifier
{
   self = [super initWithReuseIdentifier:reuseIdentifier];
   if (self)
   {
       UIView* bgView = [[UIView alloc] initWithFrame: CGRectMake(0, 0, 200, 40)];
       bgView.center = CGPointMake(UIScreen.mainScreen.bounds.origin.x / 2, 10);
       bgView.backgroundColor = [UIColor colorWithRed:196.0/255 green:196.0/255 blue:198.0/255 alpha:0.15];
       [self addSubview:bgView];
       
       UILabel* titleLabel = [[UILabel alloc] initWithFrame: CGRectMake(0, 0, 200, 40)];
       titleLabel.center = bgView.center;
       titleLabel.font = [UIFont systemFontOfSize: 12];
       titleLabel.textColor = [UIColor colorWithRed:138.0/255 green:138.0/255 blue:141.0/255 alpha:1];
       [bgView addSubview: titleLabel];
       
       UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
       flowLayout.minimumLineSpacing = 20.0f;
       flowLayout.minimumInteritemSpacing = 10.0f;
       flowLayout.itemSize = CGSizeMake(80.0f, 120.0f);
       flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
       flowLayout.sectionInset = UIEdgeInsetsMake(10.0f, 20.0f, 10.0f, 20.0f);
       
//       UICollectionView* collectionView = nil = nil = [[UICollectionView alloc] initWithFrame:C collectionViewLayout:flow ];
//       [collectionView setDataSource: self];
//       [collectionView setDelegate: self];
    
   }
   return self;
}

-(void)configure {
        
}

@end
