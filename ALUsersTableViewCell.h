//
//  ALUsersTableViewCell.h
//  Applozic
//
//  Created by Alexandr Velikotskiy on 29.04.2021.
//  Copyright © 2021 applozic Inc. All rights reserved.
//

#import <ApplozicCore/ApplozicCore.h>
#import "ALChatCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface ALUsersTableViewCell : ALChatCell<UIImagePickerControllerDelegate, UINavigationControllerDelegate>

-(instancetype)populateCell:(ALMessage*) alMessage viewSize:(CGSize)viewSize;

@end

NS_ASSUME_NONNULL_END
