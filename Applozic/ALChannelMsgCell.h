//
//  ALChannelMsgCell.h
//  Applozic
//
//  Created by Abhishek Thapliyal on 2/20/17.
//  Copyright © 2017 applozic Inc. All rights reserved.
//


#import <ApplozicCore/ApplozicCore.h>
#import "ALChatCell.h"

@interface ALChannelMsgCell : ALChatCell<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

-(instancetype)populateCell:(ALMessage*) alMessage viewSize:(CGSize)viewSize chanel:(ALChannel*)alChanel;

@end
