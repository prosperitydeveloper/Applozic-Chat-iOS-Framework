//
//  ALContactMessageCell.m
//  Applozic
//
//  Created by devashish on 12/03/2016.
//  Copyright © 2016 applozic Inc. All rights reserved.
//

// Constants

#import "ALContactMessageCell.h"
#import "UIImageView+WebCache.h"
#import "ALMessageInfoViewController.h"
#import "ALChatViewController.h"
#import "ALVCardClass.h"
#import "ALUIUtilityClass.h"

static CGFloat const USER_PROFILE_PADDING_X = 15;
static CGFloat const USER_PROFILE_WIDTH = 36;
static CGFloat const USER_PROFILE_HEIGHT = 36;
static CGFloat const BUBBLE_PADDING_X = 23;
static CGFloat const BUBBLE_PADDING_WIDTH = 120;
static CGFloat const BUBBLE_PADDING_HEIGHT = 190;
static CGFloat const DATE_HEIGHT = 20;

static CGFloat const CNT_PROFILE_X = 10;
static CGFloat const CNT_PROFILE_Y = 10;
static CGFloat const CNT_PROFILE_HEIGHT = 50;
static CGFloat const CNT_PROFILE_WIDTH = 50;
static CGFloat const CNT_PERSON_X = 10;
static CGFloat const CNT_PERSON_HEIGHT = 20;

static CGFloat const USER_CNT_Y = 5;
static CGFloat const USER_CNT_HEIGHT = 50;

static CGFloat const EMAIL_Y = 5;
static CGFloat const EMAIL_HEIGHT = 50;

static CGFloat const BUTTON_Y = 50;
static CGFloat const BUTTON_WIDTH = 20;
static CGFloat const BUTTON_HEIGHT = 40;

static CGFloat const CHANNEL_PADDING_X = 10;
static CGFloat const CHANNEL_PADDING_Y = 5;
static CGFloat const CHANNEL_PADDING_WIDTH = 5;
static CGFloat const CHANNEL_PADDING_HEIGHT = 20;
static CGFloat const AL_CONTACT_PADDING_Y = 20;

@interface ALContactMessageCell ()

@end

@implementation ALContactMessageCell
{
    NSURL *theUrl;
}
-(instancetype) initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

    if(self)
    {

        self.addContactButton = [[UIButton alloc] init];
        [self.addContactButton setTitle: NSLocalizedStringWithDefaultValue(@"addContactButtonText", [ALApplozicSettings getLocalizableName],[NSBundle mainBundle], @"ADD CONTACT", @"") forState:UIControlStateNormal];
        [self.addContactButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self.addContactButton.titleLabel setFont:[UIFont systemFontOfSize:14]];
        [self.addContactButton addTarget:self action:@selector(addButtonAction) forControlEvents:UIControlEventTouchUpInside];
        [self.addContactButton setTitleColor:[UIColor whiteColor] forState:UIControlStateHighlighted];
        [self.contentView addSubview:self.addContactButton];
        if ([UIApplication sharedApplication].userInterfaceLayoutDirection == UIUserInterfaceLayoutDirectionRightToLeft) {
            self.contactPerson.transform = CGAffineTransformMakeScale(-1.0, 1.0);
        }
    }
    return self;
}

-(instancetype)populateCell:(ALMessage *) alMessage viewSize:(CGSize)viewSize
{
    [super populateCell:alMessage viewSize:viewSize];

    [self.addContactButton setEnabled:NO];

    BOOL today = [[NSCalendar currentCalendar] isDateInToday:[NSDate dateWithTimeIntervalSince1970:[alMessage.createdAtTime doubleValue]/1000]];

    NSString * theDate = [NSString stringWithFormat:@"%@",[alMessage getCreatedAtTimeChat:today]];

    CGSize theDateSize = [ALUtilityClass getSizeForText:theDate maxWidth:150 fontSize:self.mDateLabel.font.pointSize];


    if ([alMessage isReceivedMessage])
    {
        [self.contactPerson setTextColor:[ALApplozicSettings getReceivedContactMsgLabelColor]];
        [self.userContact setTextColor:[ALApplozicSettings getReceivedContactMsgLabelColor]];
        [self.emailId setTextColor:[ALApplozicSettings getReceivedContactMsgLabelColor]];

        if([ALApplozicSettings isUserProfileHidden])
        {
            self.mUserProfileImageView.frame = CGRectMake(USER_PROFILE_PADDING_X, 0, 0, USER_PROFILE_HEIGHT);
        }
        else
        {
            self.mUserProfileImageView.frame = CGRectMake(USER_PROFILE_PADDING_X, 0,
                                                          USER_PROFILE_WIDTH, USER_PROFILE_HEIGHT);
        }

        self.mBubleImageView.backgroundColor = [ALApplozicSettings getReceiveMsgColor];

        self.mNameLabel.frame = self.mUserProfileImageView.frame;

        [self.mNameLabel setText:[ALColorUtility getAlphabetForProfileImage:alMessage.to]];
        ALContactDBService *theContactDBService = [[ALContactDBService alloc] init];
        ALContact *alContact = [theContactDBService loadContactByKey:@"userId" value: alMessage.to];
        NSString * receiverName = [alContact getDisplayName];
        if(alContact.contactImageUrl)
        {
            [ALUIUtilityClass downloadImageUrlAndSet:alContact.contactImageUrl imageView:self.mUserProfileImageView defaultImage:@"contact_default_placeholder"];
        }
        else
        {
            [self.mUserProfileImageView sd_setImageWithURL:[NSURL URLWithString:@""]];
            [self.mNameLabel setHidden:NO];
            self.mUserProfileImageView.backgroundColor = [ALColorUtility getColorForAlphabet:alMessage.to colorCodes:self.alphabetiColorCodesDictionary];
        }

        //Shift for message reply and channel name..

        CGFloat requiredHeight = viewSize.width -BUBBLE_PADDING_HEIGHT;

        CGFloat imageViewY =  self.mBubleImageView.frame.origin.y + CNT_PROFILE_Y;

        CGFloat contactProfileViewY = 0.0;
        [self.mBubleImageView setFrame:CGRectMake(self.mUserProfileImageView.frame.size.width + BUBBLE_PADDING_X , 0,
                                                  viewSize.width - BUBBLE_PADDING_WIDTH, requiredHeight)];
        if(alMessage.groupId)
        {
            [self.mChannelMemberName setHidden:NO];
            [self.mChannelMemberName setText:receiverName];
            [self.mChannelMemberName setTextColor: [UIColor colorWithRed:33.0/255 green:120.0/255 blue:103.0/255 alpha:1]];
            self.mChannelMemberName.frame = CGRectMake(self.mBubleImageView.frame.origin.x + CHANNEL_PADDING_X,
                                                       self.mBubleImageView.frame.origin.y + CHANNEL_PADDING_Y,
                                                       self.mBubleImageView.frame.size.width + CHANNEL_PADDING_WIDTH, CHANNEL_PADDING_HEIGHT);

            requiredHeight = requiredHeight + self.mChannelMemberName.frame.size.height;
            imageViewY = imageViewY +  self.mChannelMemberName.frame.size.height;
            
            contactProfileViewY =  self.mChannelMemberName.frame.origin.x-AL_CONTACT_PADDING_Y;

        }
        
        if(alMessage.isAReplyMessage)
        {
            [self processReplyOfChat:alMessage andViewSize:viewSize];

            requiredHeight = requiredHeight + self.replyParentView.frame.size.height;
            imageViewY = imageViewY +  self.replyParentView.frame.size.height;

        }


        [self.mBubleImageView setFrame:CGRectMake(self.mUserProfileImageView.frame.size.width + BUBBLE_PADDING_X , 0,viewSize.width - BUBBLE_PADDING_WIDTH, requiredHeight)];
        
        if (@available(iOS 11.0, *)) {
            self.mBubleImageView.layer.maskedCorners = kCALayerMaxXMinYCorner | kCALayerMinXMinYCorner | kCALayerMaxXMaxYCorner;
        } else {
            // Fallback on earlier versions
        }
        
        if(!alMessage.groupId){
            contactProfileViewY =  self.mUserProfileImageView.frame.origin.x + 20;
        }
        
        [self.contactProfileImage setFrame:CGRectMake(self.mBubleImageView.frame.origin.x + CNT_PROFILE_X,
                                                      contactProfileViewY,
                                                      CNT_PROFILE_WIDTH, CNT_PROFILE_HEIGHT)];
        
        CGFloat widthName = self.mBubleImageView.frame.size.width - (self.contactProfileImage.frame.size.width + 25);

        [self.contactPerson setFrame:CGRectMake(self.contactProfileImage.frame.origin.x + self.contactProfileImage.frame.size.width + CNT_PERSON_X,
                                                contactProfileViewY, widthName, CNT_PERSON_HEIGHT)];

        [self.userContact setFrame:CGRectMake(self.contactPerson.frame.origin.x,
                                              contactProfileViewY + self.contactPerson.frame.size.height + USER_CNT_Y,
                                              widthName, USER_CNT_HEIGHT)];

        [self.emailId setFrame:CGRectMake(self.userContact.frame.origin.x,
                                          contactProfileViewY + self.userContact.frame.size.height + EMAIL_Y,
                                          widthName, EMAIL_HEIGHT)];

        [self.addContactButton setFrame:CGRectMake(self.contactProfileImage.frame.origin.x,
                                                   self.mBubleImageView.frame.origin.y + self.mBubleImageView.frame.size.height - BUTTON_Y,
                                                   self.mBubleImageView.frame.size.width - BUTTON_WIDTH, BUTTON_HEIGHT)];

        self.mDateLabel.frame = CGRectMake(self.mBubleImageView.frame.origin.x ,
                                           self.mBubleImageView.frame.origin.y + self.mBubleImageView.frame.size.height,
                                           theDateSize.width , DATE_HEIGHT);

        self.mDateLabel.textAlignment = NSTextAlignmentLeft;

        self.mMessageStatusImageView.frame = CGRectMake(self.mDateLabel.frame.origin.x + self.mDateLabel.frame.size.width + 20,
                                                        self.mDateLabel.frame.origin.y, 20, 20);

        [self.addContactButton setBackgroundColor:[UIColor colorWithRed:33.0/255 green:120.0/255 blue:103.0/255 alpha:1]];
        self.addContactButton.layer.cornerRadius = 10;

    }

    [self.contactProfileImage setImage:[ALUIUtilityClass getImageFromFramworkBundle:@"contact_default_placeholder"]];
    self.contactProfileImage.layer.cornerRadius = self.contactProfileImage.frame.size.width/2;
    self.contactProfileImage.layer.masksToBounds = YES;

    self.frontView.frame = self.mBubleImageView.frame;

    self.mDateLabel.text = theDate;
    theUrl  = nil;
    self.vCardClass = nil;

    if (alMessage.imageFilePath != NULL)
    {
        NSString * docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
        NSString * filePath = [docDir stringByAppendingPathComponent:alMessage.imageFilePath];
        theUrl = [NSURL fileURLWithPath:filePath];

        self.vCardClass = [[ALVCardClass alloc] init];
        [self.vCardClass vCardParser:filePath];

        [self.contactPerson setText:self.vCardClass.fullName];
        if(self.vCardClass.contactImage)
        {
            [self.contactProfileImage setImage:self.vCardClass.contactImage];
        }
        [self.emailId setText:self.vCardClass.userEMAIL_ID];
        [self.userContact setText:self.vCardClass.userPHONE_NO];
        [self.addContactButton setEnabled:YES];
    }

    return self;
}

-(void)addButtonAction
{
    @try
    {
        [self.vCardClass addContact:self.vCardClass];
    } @catch (NSException *exception) {
        
        ALSLog(ALLoggerSeverityInfo, @"CONTACT_EXCEPTION :: %@", exception.description);
    }
}

@end
