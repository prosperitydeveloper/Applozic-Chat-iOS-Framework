//
//  ALChannelMsgCell.h
//  Applozic
//
//  Created by Abhishek Thapliyal on 2/20/17.
//  Copyright © 2017 applozic Inc. All rights reserved.
//


#import <ApplozicCore/ApplozicCore.h>
#import "ALChatCell.h"

@interface ALChannelMsgCell: ALChatCell<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (nonatomic, strong) UICollectionView* collectionView;
@property (nonatomic) BOOL isShowUsers;

-(instancetype)populateCell:(ALMessage*) alMessage viewSize:(CGSize)viewSize;

@end
