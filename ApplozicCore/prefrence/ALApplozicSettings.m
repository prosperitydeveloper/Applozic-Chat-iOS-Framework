//
//  ALApplozicSettings.m
//  Applozic
//
//  Created by devashish on 20/11/2015.
//  Copyright © 2015 applozic Inc. All rights reserved.
//

#import "ALApplozicSettings.h"
#import "ALUserDefaultsHandler.h"
#import "ALConstant.h"
#import "ALUtilityClass.h"

@interface ALApplozicSettings ()

@end

@implementation ALApplozicSettings

+(void)setFontFace:(NSString *)fontFace
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:fontFace forKey:AL_FONT_FACE];
    [userDefaults synchronize];
}

+(NSString *)getFontFace
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_FONT_FACE];
}

+(void)setChatCellFontTextStyle:(NSString *)fontTextStyle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:fontTextStyle forKey:AL_CHAT_CELL_FONT_TEXT_STYLE];
    [userDefaults synchronize];
}

+(NSString *)getChatCellFontTextStyle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults objectForKey:AL_CHAT_CELL_FONT_TEXT_STYLE];
}

+(void)setChatChannelCellFontTextStyle:(NSString *)fontTextStyle{

    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:fontTextStyle forKey:AL_CHAT_CHANNEL_CELL_FONT_TEXT_STYLE];
    [userDefaults synchronize];
}

+(NSString *)getChatChannelCellFontTextStyle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults objectForKey:AL_CHAT_CHANNEL_CELL_FONT_TEXT_STYLE];
}

+(void)setTitleForConversationScreen:(NSString *)titleText
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:titleText forKey:AL_CONVERSATION_TITLE];
    [userDefaults synchronize];
}


+(NSString *)getTitleForConversationScreen
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_CONVERSATION_TITLE];
}

+(void)setUserProfileHidden: (BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_USER_PROFILE_PROPERTY];
    [userDefaults synchronize];
}

+(BOOL)isUserProfileHidden
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_USER_PROFILE_PROPERTY];
}

+(void)setColorForSendMessages:(UIColor *)sendMsgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *sendColorData = [NSKeyedArchiver archivedDataWithRootObject:sendMsgColor];
    [userDefaults setObject:sendColorData forKey:AL_SEND_MSG_COLOUR];
    [userDefaults synchronize];
}

+(void)setColorForReceiveMessages:(UIColor *)receiveMsgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *receiveColorData = [NSKeyedArchiver archivedDataWithRootObject:receiveMsgColor];
    [userDefaults setObject:receiveColorData forKey:AL_RECEIVE_MSG_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getSendMsgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *sendColorData = [userDefaults objectForKey:AL_SEND_MSG_COLOUR];
    UIColor *sendColor = [NSKeyedUnarchiver unarchiveObjectWithData:sendColorData];
    if(sendColor)
    {
        return sendColor;
    }
    return [UIColor whiteColor];
}

+(UIColor *)getReceiveMsgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *receiveColorData = [userDefaults objectForKey:AL_RECEIVE_MSG_COLOUR];
    UIColor *receiveColor = [NSKeyedUnarchiver unarchiveObjectWithData:receiveColorData];
    if(receiveColor)
    {
        return receiveColor;
    }
    return [UIColor whiteColor];
}

+(void)setColorForNavigation:(UIColor *)barColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *barColorData = [NSKeyedArchiver archivedDataWithRootObject:barColor];
    [userDefaults setObject:barColorData forKey:AL_NAVIGATION_BAR_COLOUR];
    [userDefaults synchronize];

}

+(UIColor *)getColorForNavigation
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *barColorData = [userDefaults objectForKey:AL_NAVIGATION_BAR_COLOUR];
    UIColor *barColor = [NSKeyedUnarchiver unarchiveObjectWithData:barColorData];
    return barColor;
}

+(void)setColorForNavigationItem:(UIColor *)barItemColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *barItemColorData = [NSKeyedArchiver archivedDataWithRootObject:barItemColor];
    [userDefaults setObject:barItemColorData forKey:AL_NAVIGATION_BAR_ITEM_COLOUR];
    [userDefaults synchronize];

}

+(UIColor *)getColorForNavigationItem
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *barItemColourData = [userDefaults objectForKey:AL_NAVIGATION_BAR_ITEM_COLOUR];
    UIColor *barItemColour = [NSKeyedUnarchiver unarchiveObjectWithData:barItemColourData];
    return barItemColour ? barItemColour : [UIColor whiteColor];
}

+(void)hideRefreshButton:(BOOL)state
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:state forKey:AL_REFRESH_BUTTON_VISIBILITY];
    [userDefaults synchronize];
}

+(BOOL)isRefreshButtonHidden
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_REFRESH_BUTTON_VISIBILITY];
}

+(void)setTitleForBackButtonMsgVC:(NSString *)backButtonTitle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:backButtonTitle forKey:AL_BACK_BUTTON_TITLE];
    [userDefaults synchronize];
}

+(NSString *)getTitleForBackButtonMsgVC
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_BACK_BUTTON_TITLE];
}

+(void)setTitleForBackButtonChatVC:(NSString *)backButtonTitle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:backButtonTitle forKey:AL_BACK_BUTTON_TITLE_CHATVC];
    [userDefaults synchronize];
}


+(NSString *)getTitleForBackButtonChatVC
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString * text = [userDefaults valueForKey:AL_BACK_BUTTON_TITLE_CHATVC];
    return text ? text : NSLocalizedStringWithDefaultValue(@"chatViewBack", [ALApplozicSettings getLocalizableName],[NSBundle mainBundle], @"Back", @"");

}


+(void)setNotificationTitle:(NSString *)notificationTitle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:notificationTitle forKey:AL_NOTIFICATION_TITLE];
    [userDefaults synchronize];
}

+(NSString *)getNotificationTitle{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_NOTIFICATION_TITLE];
}

+(void)setMaxImageSizeForUploadInMB:(NSInteger)maxFileSize
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setInteger:maxFileSize forKey:AL_IMAGE_UPLOAD_MAX_SIZE];
    [userDefaults synchronize];
}

+(NSInteger)getMaxImageSizeForUploadInMB
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults integerForKey:AL_IMAGE_UPLOAD_MAX_SIZE];
}

+(void) setMaxCompressionFactor:(double)maxCompressionRatio
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setDouble:maxCompressionRatio  forKey:AL_IMAGE_COMPRESSION_FACTOR];
    [userDefaults synchronize];
}

+(double) getMaxCompressionFactor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults doubleForKey:AL_IMAGE_COMPRESSION_FACTOR];
}

+(void)setGroupOption:(BOOL)option
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:option forKey:AL_GROUP_ENABLE];
    [userDefaults synchronize];
}

+(BOOL)getGroupOption
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GROUP_ENABLE];
}

+(void)setMultipleAttachmentMaxLimit:(NSInteger)limit
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setInteger:limit forKey:AL_MAX_SEND_ATTACHMENT];
    [userDefaults synchronize];
}

+(NSInteger)getMultipleAttachmentMaxLimit
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSInteger maxLimit = [userDefaults integerForKey:AL_MAX_SEND_ATTACHMENT];
    return maxLimit ? maxLimit : 5;
}

+(void)setFilterContactsStatus:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_FILTER_CONTACT];
    [userDefaults synchronize];
}

+(BOOL)getFilterContactsStatus
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_FILTER_CONTACT];
}

+(void)setStartTime:(NSNumber *)startTime
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    startTime = @([startTime doubleValue] + 1);
    [userDefaults setDouble:[startTime doubleValue] forKey:AL_FILTER_CONTACT_START_TIME];
    [userDefaults synchronize];
}

+(NSNumber *)getStartTime
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_FILTER_CONTACT_START_TIME];
}

+(void)setChatWallpaperImageName:(NSString*)imageName{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:imageName forKey:AL_WALLPAPER_IMAGE];
    [userDefaults synchronize];
}

+(NSString *)getChatWallpaperImageName{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_WALLPAPER_IMAGE];
}

+(void)setCustomMessageBackgroundColor:(UIColor *)color{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;

    NSData * recievedCustomBackgroundColorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setValue:recievedCustomBackgroundColorData
                                             forKey:AL_CUSTOM_MSG_BACKGROUND_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getCustomMessageBackgroundColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *customMessageBackGroundColorData = [userDefaults
                                                objectForKey:AL_CUSTOM_MSG_BACKGROUND_COLOR];
    UIColor *customMessageBackGroundColor = [NSKeyedUnarchiver unarchiveObjectWithData:customMessageBackGroundColorData];
    return customMessageBackGroundColor;
}

+(void)setCustomMessageTextColor:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;

    NSData * recievedCustomBackgroundColorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setValue:recievedCustomBackgroundColorData
                                             forKey:AL_CUSTOM_MSG_TEXT_COLOR];
    [userDefaults synchronize];
}
+(UIColor *)getCustomMessageTextColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *customMessageBackGroundColorData = [userDefaults
                                                objectForKey:AL_CUSTOM_MSG_TEXT_COLOR];
    UIColor *customMessageBackGroundColor = [NSKeyedUnarchiver unarchiveObjectWithData:customMessageBackGroundColorData];
    return customMessageBackGroundColor;
}

+(void)setGroupExitOption:(BOOL)option{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:option forKey:AL_GROUP_EXIT_BUTTON];
    [userDefaults synchronize];
}

+(BOOL)getGroupExitOption{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GROUP_EXIT_BUTTON];
}

+(void)setGroupMemberAddOption:(BOOL)option{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:option forKey:AL_GROUP_MEMBER_ADD_OPTION];
    [userDefaults synchronize];
}

+(BOOL)getGroupMemberAddOption{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GROUP_MEMBER_ADD_OPTION];
}

+(void)setGroupMemberRemoveOption:(BOOL)option{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:option forKey:AL_GROUP_MEMBER_REMOVE_OPTION];
    [userDefaults synchronize];
}

+(BOOL)getGroupMemberRemoveOption{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GROUP_MEMBER_REMOVE_OPTION];
}

+(void)setOnlineContactLimit:(NSInteger)limit
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setInteger:limit forKey:AL_ONLINE_CONTACT_LIMIT];
    [userDefaults synchronize];
}

+(NSInteger)getOnlineContactLimit
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSInteger maxLimit = [userDefaults integerForKey:AL_ONLINE_CONTACT_LIMIT];
    return maxLimit ? maxLimit : 0;
}

+(void)setContextualChat:(BOOL)option
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:option forKey:AL_CONTEXTUAL_CHAT_OPTION];
    [userDefaults synchronize];
}

+(BOOL)getContextualChatOption
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_CONTEXTUAL_CHAT_OPTION];
}

+(NSString *)getCustomClassName
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_THIRD_PARTY_VC_NAME];
}

+(void)setCustomClassName:(NSString *)className
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:className forKey:AL_THIRD_PARTY_VC_NAME];
    [userDefaults synchronize];
}

+(BOOL)getOptionToPushNotificationToShowCustomGroupDetalVC
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_THIRD_PARTY_DETAIL_VC_NOTIFICATION];
}

+(void)setOptionToPushNotificationToShowCustomGroupDetalVC:(BOOL)option
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:option forKey:AL_THIRD_PARTY_DETAIL_VC_NOTIFICATION];
    [userDefaults synchronize];
}

+(void)setCallOption:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_USER_CALL_OPTION];
    [userDefaults synchronize];
}

+(BOOL)getCallOption
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_USER_CALL_OPTION];
}

/*
 NOTIFICATION_ENABLE_SOUND = 0,
 NOTIFICATION_DISABLE_SOUND = 1,
 NOTIFICATION_DISABLE = 2
 */
+(void)enableNotificationSound{
    [ALUserDefaultsHandler setNotificationMode:AL_NOTIFICATION_ENABLE_SOUND];
}

+(void)disableNotificationSound{
    [ALUserDefaultsHandler setNotificationMode:AL_NOTIFICATION_DISABLE_SOUND];
}

+(void)enableNotification{
    [ALUserDefaultsHandler setNotificationMode:AL_NOTIFICATION_ENABLE];
}

+(void)disableNotification{
    [ALUserDefaultsHandler setNotificationMode:AL_NOTIFICATION_DISABLE];
}

+(void)setColorForSendButton:(UIColor *)color
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_SEND_BUTTON_BG_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getColorForSendButton
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [userDefaults objectForKey:AL_SEND_BUTTON_BG_COLOR];
    UIColor * color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color;
}

+(void)setColorForTypeMsgBackground:(UIColor *)viewColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * viewColorData = [NSKeyedArchiver archivedDataWithRootObject:viewColor];
    [userDefaults setObject:viewColorData forKey:AL_TYPE_MSG_BG_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getColorForTypeMsgBackground
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * viewColorData = [userDefaults objectForKey:AL_TYPE_MSG_BG_COLOR];
    UIColor * viewColor = [NSKeyedUnarchiver unarchiveObjectWithData:viewColorData];
    return viewColor ? viewColor : [UIColor lightGrayColor];
}

+(void)setBGColorForTypingLabel:(UIColor *)bgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * bgColorData = [NSKeyedArchiver archivedDataWithRootObject:bgColor];
    [userDefaults setObject:bgColorData forKey:AL_TYPING_LABEL_BG_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getBGColorForTypingLabel
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * bgColorData = [userDefaults objectForKey:AL_TYPING_LABEL_BG_COLOR];
    UIColor * bgColor = [NSKeyedUnarchiver unarchiveObjectWithData:bgColorData];
    return bgColor ? bgColor : [UIColor colorWithRed:242/255.0 green:242/255.0  blue:242/255.0 alpha:1];
}

+(void)setTextColorForTypingLabel:(UIColor *)txtColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * txtColorData = [NSKeyedArchiver archivedDataWithRootObject:txtColor];
    [userDefaults setObject:txtColorData forKey:AL_TYPING_LABEL_TEXT_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getTextColorForTypingLabel
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * txtColorData = [userDefaults objectForKey:AL_TYPING_LABEL_TEXT_COLOR];
    UIColor * txtColor = [NSKeyedUnarchiver unarchiveObjectWithData:txtColorData];
    return txtColor ? txtColor : [UIColor colorWithRed:51.0/255 green:51.0/255 blue:51.0/255 alpha:0.5];
}

+(void)setTextColorForMessageTextView:(UIColor *)txtColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * txtColorData = [NSKeyedArchiver archivedDataWithRootObject:txtColor];
    [userDefaults setObject:txtColorData forKey:AL_MESSAGE_TEXT_VIEW_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getTextColorForMessageTextView
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * txtColorData = [userDefaults objectForKey:AL_MESSAGE_TEXT_VIEW_COLOR];
    UIColor * txtColor = [NSKeyedUnarchiver unarchiveObjectWithData:txtColorData];
    return txtColor ? txtColor : [UIColor blackColor];
}


+(void)setEmptyConversationText:(NSString *)text
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:text forKey:AL_EMPTY_CONVERSATION_TEXT];
    [userDefaults synchronize];
}

+(NSString *)getEmptyConversationText
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString * text = [userDefaults valueForKey:AL_EMPTY_CONVERSATION_TEXT];
    return text ? text : NSLocalizedStringWithDefaultValue(@"noConversationTitle", [ALApplozicSettings getLocalizableName],[NSBundle mainBundle], @"You have no conversations yet", @"");
}

+(void)setVisibilityNoConversationLabelChatVC:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_NO_CONVERSATION_FLAG_CHAT_VC];
    [userDefaults synchronize];
}

+(BOOL)getVisibilityNoConversationLabelChatVC
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_NO_CONVERSATION_FLAG_CHAT_VC];
}

+(void)setVisibilityForOnlineIndicator:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_ONLINE_INDICATOR_VISIBILITY];
    [userDefaults synchronize];
}

+(BOOL)getVisibilityForOnlineIndicator
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_ONLINE_INDICATOR_VISIBILITY];
}

+(void)setVisibilityForNoMoreConversationMsgVC:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_NO_MORE_CONVERSATION_VISIBILITY];
    [userDefaults synchronize];
}

+(BOOL)getVisibilityForNoMoreConversationMsgVC
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_NO_MORE_CONVERSATION_VISIBILITY];
}

+(void)enableRefreshChatButtonInMsgVc:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_CUSTOM_NAV_RIGHT_BUTTON_MSGVC];
    [userDefaults synchronize];
}

+(BOOL)isRefreshChatButtonEnabledInMsgVc
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_CUSTOM_NAV_RIGHT_BUTTON_MSGVC];
}

+(void)setColorForToastBackground:(UIColor *)toastBGColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * toastBGData = [NSKeyedArchiver archivedDataWithRootObject:toastBGColor];
    [userDefaults setObject:toastBGData forKey:AL_TOAST_BG_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getColorForToastBackground
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * toastBGData = [userDefaults objectForKey:AL_TOAST_BG_COLOUR];
    UIColor * toastBGColor = [NSKeyedUnarchiver unarchiveObjectWithData:toastBGData];
    return toastBGColor ? toastBGColor : [UIColor grayColor];
}

+(void)setColorForToastText:(UIColor *)toastTextColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * toastTextData = [NSKeyedArchiver archivedDataWithRootObject:toastTextColor];
    [userDefaults setObject:toastTextData forKey:AL_TOAST_TEXT_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getColorForToastText
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * toastTextData = [userDefaults objectForKey:AL_TOAST_TEXT_COLOUR];
    UIColor * toastTextColor = [NSKeyedUnarchiver unarchiveObjectWithData:toastTextData];
    return toastTextColor ? toastTextColor : [UIColor blackColor];
}

+(void)setSendMsgTextColor:(UIColor *)sendMsgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *sendColorData = [NSKeyedArchiver archivedDataWithRootObject:sendMsgColor];
    [userDefaults setObject:sendColorData forKey:AL_SEND_MSG_TEXT_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getSendMsgTextColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *sendColorData = [userDefaults objectForKey:AL_SEND_MSG_TEXT_COLOUR];
    UIColor *sendColor = [NSKeyedUnarchiver unarchiveObjectWithData:sendColorData];
    return sendColor ? sendColor : [UIColor whiteColor];
}

+(void)setReceiveMsgTextColor:(UIColor *)receiveMsgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *receiveColorData = [NSKeyedArchiver archivedDataWithRootObject:receiveMsgColor];
    [userDefaults setObject:receiveColorData forKey:AL_RECEIVE_MSG_TEXT_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getReceiveMsgTextColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *receiveColorData = [userDefaults objectForKey:AL_RECEIVE_MSG_TEXT_COLOUR];
    UIColor *receiveColor = [NSKeyedUnarchiver unarchiveObjectWithData:receiveColorData];
    return receiveColor ? receiveColor : [UIColor grayColor];
}

+(void)setMsgTextViewBGColor:(UIColor *)color
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_MSG_TEXT_BG_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getMsgTextViewBGColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [userDefaults objectForKey:AL_MSG_TEXT_BG_COLOUR];
    UIColor * bgColor = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return bgColor ? bgColor : [UIColor whiteColor];
}

+(void)setPlaceHolderColor:(UIColor *)color
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_PLACE_HOLDER_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getPlaceHolderColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [userDefaults objectForKey:AL_PLACE_HOLDER_COLOUR];
    UIColor * bgColor = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return bgColor ? bgColor : [UIColor grayColor];
}

+(void)setUnreadCountLabelBGColor:(UIColor *)color
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_UNREAD_COUNT_LABEL_BG_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getUnreadCountLabelBGColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [userDefaults objectForKey:AL_UNREAD_COUNT_LABEL_BG_COLOUR];
    UIColor * bgColor = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return bgColor ? bgColor : [UIColor colorWithRed:66.0/255 green:173.0/255 blue:247.0/255 alpha:1];
}

+(void)setStatusBarBGColor:(UIColor *)color
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_STATUS_BAR_BG_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *)getStatusBarBGColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [userDefaults objectForKey:AL_STATUS_BAR_BG_COLOUR];
    UIColor * bgColor = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return bgColor ? bgColor : [self getColorForNavigation];
}

+(void)setStatusBarStyle:(UIStatusBarStyle)style
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setInteger:style forKey:AL_STATUS_BAR_STYLE];
    [userDefaults synchronize];
}

+(UIStatusBarStyle)getStatusBarStyle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    UIStatusBarStyle style = [userDefaults integerForKey:AL_STATUS_BAR_STYLE];
    return style ? style : UIStatusBarStyleDefault;
}

+(void)setMaxTextViewLines:(int)numberOfLines
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setInteger:numberOfLines forKey:AL_MAX_TEXT_VIEW_LINES];
    [userDefaults synchronize];
}

+(int)getMaxTextViewLines
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSInteger line = [userDefaults integerForKey:AL_MAX_TEXT_VIEW_LINES];
    return line ? (int)line : 4;
}

+(NSString *)getAbuseWarningText
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString * msg = [userDefaults valueForKey:AL_ABUSE_WORDS_WARNING_TEXT];
    return msg ? msg :  NSLocalizedStringWithDefaultValue(@"restrictionWorldInfo", [ALApplozicSettings getLocalizableName], [NSBundle mainBundle], @"AVOID USE OF ABUSE WORDS", @"");
    ;
}

+(void)setAbuseWarningText:(NSString *)warningText
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:warningText forKey:AL_ABUSE_WORDS_WARNING_TEXT];
    [userDefaults synchronize];
}

+(void)setMessageAbuseMode:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_ENABLE_MSGTEXT_ABUSE_CHECK];
    [userDefaults synchronize];
}

+(BOOL)getMessageAbuseMode
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_ENABLE_MSGTEXT_ABUSE_CHECK];
}

+(void)setDateColor:(UIColor *)dateColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [NSKeyedArchiver archivedDataWithRootObject:dateColor];
    [userDefaults setObject:colorData forKey:AL_MSG_DATE_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getDateColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_MSG_DATE_COLOR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor colorWithRed:51.0/255 green:51.0/255 blue:51.0/255 alpha:0.5];
}

+(void)setMsgDateColor:(UIColor *)dateColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [NSKeyedArchiver archivedDataWithRootObject:dateColor];
    [userDefaults setObject:colorData forKey:AL_MSG_SEPERATE_DATE_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getMsgDateColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_MSG_SEPERATE_DATE_COLOR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor blackColor];
}

+(void)setReceiverUserProfileOption:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_ENABLE_RECEIVER_USER_PROFILE];
    [userDefaults synchronize];
}

+(BOOL)getReceiverUserProfileOption
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_ENABLE_RECEIVER_USER_PROFILE];
}

+(void)setCustomMessageFontSize:(float)fontSize
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setFloat:fontSize forKey:AL_CUSTOM_MSG_FONT_SIZE];
    [userDefaults synchronize];
}

+(float)getCustomMessageFontSize
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    float size = [userDefaults floatForKey:AL_CUSTOM_MSG_FONT_SIZE];
    return size ? size : 14;
}

//+(void)setCustomMessageFont:(NSString *)font
//{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
//    [userDefaults setValue:font forKey:AL_CUSTOM_MSG_FONT];
//    [userDefaults synchronize];
//}

//+(NSString *)getCustomMessageFont
//{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
//    NSString * font = [userDefaults valueForKey:AL_CUSTOM_MSG_FONT];
//    return font ? font : @".SFUI-Regular";
//}

+(void)setGroupInfoDisabled:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_GROUP_INFO_DISABLED];
    [userDefaults synchronize];
}

+(BOOL)isGroupInfoDisabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GROUP_INFO_DISABLED];

}

+(void)setGroupInfoEditDisabled:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_GROUP_INFO_EDIT_DISABLED];
    [userDefaults synchronize];
}

+(BOOL)isGroupInfoEditDisabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GROUP_INFO_EDIT_DISABLED];
}

+(void) setContactTypeToFilter:(NSMutableArray*)arrayWithIds
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:arrayWithIds forKey:AL_FILTER_ONLY_CONTACT_TYPE_ID];
    [userDefaults synchronize];
}

+(NSMutableArray*) getContactTypeToFilter
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [[userDefaults objectForKey:AL_FILTER_ONLY_CONTACT_TYPE_ID] mutableCopy];
}

+(NSString *)getCustomNavigationControllerClassName
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString * className = [userDefaults stringForKey:AL_CUSTOM_NAVIGATION_CLASS_NAME];
    return className;
}

+(void)setNavigationControllerClassName:(NSString *)className
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:className forKey:AL_CUSTOM_NAVIGATION_CLASS_NAME];
    [userDefaults synchronize];
}

+(void)setSubGroupLaunchFlag:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_SUB_GROUP_LAUNCH];
    [userDefaults synchronize];
}

+(BOOL)getSubGroupLaunchFlag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_SUB_GROUP_LAUNCH];
}

+(void)setGroupOfTwoFlag:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_GROUP_OF_TWO_FLAG];
    [userDefaults synchronize];
}

+(BOOL)getGroupOfTwoFlag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GROUP_OF_TWO_FLAG];
}

+(void)setBroadcastGroupEnable:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_BROADCAST_GROUP_ENABLE];
    [userDefaults synchronize];
}

+(BOOL)isBroadcastGroupEnable
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_BROADCAST_GROUP_ENABLE];
}

+(void)setListOfViewControllers:(NSArray *)viewList
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:viewList forKey:AL_VIEW_CONTROLLER_ARRAY];
    [userDefaults synchronize];
}

+(NSArray *)getListOfViewControllers
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults objectForKey:AL_VIEW_CONTROLLER_ARRAY];
}

+(NSString *)getMsgContainerVC
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults stringForKey:AL_MSG_CONTAINER_VC];
}

+(void)setMsgContainerVC:(NSString *)className
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:className forKey:AL_MSG_CONTAINER_VC];
    [userDefaults synchronize];
}

+(void)setAudioVideoClassName:(NSString *)className
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:className forKey:AL_AUDIO_VIDEO_CLASS];
    [userDefaults synchronize];
}

+(NSString *)getAudioVideoClassName
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_AUDIO_VIDEO_CLASS];
}

+(void)setClientStoryBoard:(NSString *)storyboard
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:storyboard forKey:AL_CLIENT_STORYBOARD];
    [userDefaults synchronize];
}

+(NSString *)getClientStoryBoard
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_CLIENT_STORYBOARD];
}
+(NSString *)getGroupDeletedTitle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString * title = [userDefaults stringForKey:AL_GROUP_DELETED_TITLE];
    return title ? title : NSLocalizedStringWithDefaultValue(@"groupDeletedInfo", [ALApplozicSettings getLocalizableName], [NSBundle mainBundle], @"This Group has been Deleted", @"");;
}

+(void)setGroupDeletedTitle:(NSString *)title;
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:title forKey:AL_GROUP_DELETED_TITLE];
    [userDefaults synchronize];
}

+(NSString *)getUserDeletedText
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString *text = [userDefaults valueForKey:AL_USER_DELETED_TEXT];
    return text ? text :NSLocalizedStringWithDefaultValue(@"userDeletedInfo", [ALApplozicSettings getLocalizableName], [NSBundle mainBundle], @"User has been deleted", @"");
}

+(void)setUserDeletedText:(NSString *)text
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:text forKey:AL_USER_DELETED_TEXT];
    [userDefaults synchronize];
}

+(UIImage *)getChatListTabIcon
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString *iconName = [userDefaults valueForKey:AL_CHAT_LIST_TAB_ICON];
    UIImage *customImg = nil;
    if (iconName.length) {
        customImg = [UIImage imageNamed:iconName];
    }
    return customImg;
}

+(void)setChatListTabIcon:(NSString *)imageName
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:imageName forKey:AL_CHAT_LIST_TAB_ICON];
    [userDefaults synchronize];
}

+(NSString *)getChatListTabTitle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString *stringtext = [userDefaults valueForKey:AL_CHAT_LIST_TAB_TITLE];
    return (stringtext && stringtext.length) ? stringtext :NSLocalizedStringWithDefaultValue(@"tabbarChatsTitle", [ALApplozicSettings getLocalizableName], [NSBundle mainBundle], @"Chats", @"");
}

+(void)setChatListTabTitle:(NSString *)title
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:title forKey:AL_CHAT_LIST_TAB_TITLE];
    [userDefaults synchronize];
}

+(UIImage *)getProfileTabIcon
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString *iconName = [userDefaults valueForKey:AL_USER_PROFILE_TAB_ICON];
    UIImage *customImg = nil;
    if (iconName.length) {
        customImg = [UIImage imageNamed:iconName];
    }
    return customImg;
}

+(void)setProfileTabIcon:(NSString *)imageName
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:imageName forKey:AL_USER_PROFILE_TAB_ICON];
    [userDefaults synchronize];
}

+(NSString *)getProfileTabTitle
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSString *stringtext = [userDefaults valueForKey:AL_USER_PROFILE_TAB_TITLE];
    return (stringtext && stringtext.length) ? stringtext : NSLocalizedStringWithDefaultValue(@"tabbarProfileTitle", [ALApplozicSettings getLocalizableName], [NSBundle mainBundle], @"Profile", @"");
}

+(void)setProfileTabTitle:(NSString *)title
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:title forKey:AL_USER_PROFILE_TAB_TITLE];
    [userDefaults synchronize];
}

+(void)openChatOnTapUserProfile:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_OPEN_CHAT_ON_USER_PROFILE_TAP];
    [userDefaults synchronize];
}

+(BOOL)isChatOnTapUserProfile
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_OPEN_CHAT_ON_USER_PROFILE_TAP];
}

+(void)replyOptionEnabled:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_MESSAGE_REPLY_ENABLED];
    [userDefaults synchronize];
}

+(BOOL)isReplyOptionEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_MESSAGE_REPLY_ENABLED];
}

+(void)setAudioVideoEnabled:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_AV_ENABLED];
    [userDefaults synchronize];
}

+(BOOL)isAudioVideoEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_AV_ENABLED];
}

+(void)enableOrDisableContactsGroup:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_CONTACTS_GROUP];
    [userDefaults synchronize];
}

+(BOOL)isContactsGroupEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_CONTACTS_GROUP];
}

+(void)setContactsGroupId:(NSString *)contactsGroupId
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:contactsGroupId forKey:AL_CONTACTS_GROUP_ID];
    [userDefaults synchronize];
}

+(NSString *)getContactsGroupId
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_CONTACTS_GROUP_ID];
}

+(void)setContactGroupIdList:(NSArray *)contactsGroupIdList
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:contactsGroupIdList forKey:AL_CONTACTS_GROUP_ID_LIST];
    [userDefaults synchronize];
}

+(NSArray*)getContactGroupIdList
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_CONTACTS_GROUP_ID_LIST];
}


+(void)forwardOptionEnableOrDisable:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_FORWARD_OPTION];
    [userDefaults synchronize];
}

+(BOOL)isForwardOptionEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_FORWARD_OPTION];
}

+(void)setSwiftFramework:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_SWIFT_FRAMEWORK];
    [userDefaults synchronize];
}

+(BOOL)isSwiftFramework
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_SWIFT_FRAMEWORK];
}

+(BOOL)isStorageServiceEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_DEDICATED_SERVER];
}

+(void)enableStorageService:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_DEDICATED_SERVER];
    [userDefaults synchronize];
}

+(BOOL)isGoogleCloudServiceEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GOOGLE_CLOUD_SERVICE_ENABLE];
}

+(void)enableGoogleCloudService:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_GOOGLE_CLOUD_SERVICE_ENABLE];
    [userDefaults synchronize];
}

+(void) setHideAttachmentsOption:(NSMutableArray*)array{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;

    [userDefaults setObject:array forKey:AL_HIDE_ATTACHMENT_OPTION];
    [userDefaults synchronize];
}

+(NSArray*) getHideAttachmentsOption{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults objectForKey:AL_HIDE_ATTACHMENT_OPTION];
}

+(void) setTemplateMessages:(NSMutableDictionary*)dictionary{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;

    [userDefaults setObject:dictionary forKey:AL_TEMPLATE_MESSAGES];
    [userDefaults synchronize];
}


+(NSMutableDictionary*) getTemplateMessages{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;

    return [userDefaults objectForKey:AL_TEMPLATE_MESSAGES];
}

+(BOOL)isTemplateMessageEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_TEMPLATE_MESSAGE_VIEW];
}

+(void)enableTeamplateMessage:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_TEMPLATE_MESSAGE_VIEW];
    [userDefaults synchronize];
}

+(BOOL) isCameraOptionHidden{
    return ([[self getHideAttachmentsOption] containsObject:@":camera"]);
}

+(BOOL) isPhotoGalleryOptionHidden{
    return ([[self getHideAttachmentsOption] containsObject:@":gallery"]);
}

+(BOOL) isSendAudioOptionHidden{
    return ([[self getHideAttachmentsOption] containsObject:@":audio"]);
}

+(BOOL) isSendVideoOptionHidden{
    return ([[self getHideAttachmentsOption] containsObject:@":video"]);
}

+(BOOL) isLocationOptionHidden{
    return ([[self getHideAttachmentsOption] containsObject:@":location"]);

}

+(BOOL) isBlockUserOptionHidden{
    return ([[self getHideAttachmentsOption] containsObject:@":blockUser"]);
}

+(BOOL) isShareContactOptionHidden{
    return ([[self getHideAttachmentsOption] containsObject:@":shareContact"]);
}

+(BOOL) isAttachmentButtonHidden{
    return ([[self getHideAttachmentsOption] containsObject:@":attachmentbutton"]);
}

+(BOOL) isDocumentOptionHidden{

    return ([[self getHideAttachmentsOption] containsObject:@":document"] || !self.isDocumentOptionEnabled);
}

+(BOOL)isDocumentOptionEnabled
{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults boolForKey:AL_DOCUMENT_OPTION];
}

+(void)enableDocumentOption:(BOOL)flag
{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_DOCUMENT_OPTION];
    [userDefaults synchronize];
}

+(BOOL)isS3StorageServiceEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_S3_STORAGE_SERVICE];
}

+(void)enableS3StorageService:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_S3_STORAGE_SERVICE];
    [userDefaults synchronize];
}

// This will set the default group type (to be used when "Create Group" button is pressed).
+(void) setDefaultGroupType:(NSInteger)type {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setInteger:type forKey:AL_DEFAULT_GROUP_TYPE];
    [userDefaults synchronize];
}

+(NSInteger) getDefaultGroupType {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return([userDefaults integerForKey:AL_DEFAULT_GROUP_TYPE ]);
}

/// If enabled, all the videos (recieved or sent) will be saved in the gallery.
+(void) enableSaveVideosToGallery:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_SAVE_VIDEOS_TO_GALLERY];
}

+(BOOL) isSaveVideoToGalleryEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_SAVE_VIDEOS_TO_GALLERY];
}

+(void) enableQuickAudioRecording:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_ENABLE_QUICK_AUDIO_RECORDING];
}

+(BOOL) isQuickAudioRecordingEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_ENABLE_QUICK_AUDIO_RECORDING];
}

+(void)setUserRoleName:(NSString*)roleName{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:roleName forKey:AL_USER_ROLE_NAME];
    [userDefaults synchronize];

}

+(NSString*)getUserRoleName{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;

    NSString *stringtext = [userDefaults valueForKey:AL_USER_ROLE_NAME];
    return stringtext ? stringtext : @"USER";
}


+(void)setConversationCloseButton:(BOOL)option
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:option forKey:AL_GROUP_CONVEERSATION_CLOSE];
    [userDefaults synchronize];
}

+(BOOL)isConversationCloseButtonEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_GROUP_CONVEERSATION_CLOSE];
}

+(void)setDropShadowInNavigationBar:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_DROP_IN_SHADOW_IN_NAVIGATION_BAR];
    [userDefaults synchronize];
}

+(BOOL)isDropShadowInNavigationBarEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_DROP_IN_SHADOW_IN_NAVIGATION_BAR];
}

+(void)setLocalizableName:(NSString *)localizableName
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:localizableName forKey:AL_APPLOZIC_LOCALIZABLE];
    [userDefaults synchronize];
}

+(NSString *)getLocalizableName
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
   return [userDefaults valueForKey:AL_APPLOZIC_LOCALIZABLE];

}

+(void)setCategoryName:(NSString*)categoryName{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:categoryName forKey:AL_CATEGORY_NAME];
    [userDefaults synchronize];

}

+(NSString*)getCategoryName{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_CATEGORY_NAME];
}

+(BOOL)isDeleteConversationOptionEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_DELETE_CONVERSATION_OPTION];
}

+(void)setDeleteConversationOption:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_DELETE_CONVERSATION_OPTION];
    [userDefaults synchronize];
}

+(BOOL)isContactSearchEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_CONTACT_SEARCH];
}

+(void)enableContactSearch:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_CONTACT_SEARCH];
    [userDefaults synchronize];
}

+(BOOL)isChannelMembersInfoInNavigationBarEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_CHANNEL_MEMBER_INFO_IN_SUBTITLE];
}

+(UIColor *) getTabBarBackgroundColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_TABBAR_BACKGROUND_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor colorWithRed:247.0/255 green:247.0/255 blue:247.0/255 alpha:0.5];
}
+(void) setTabBarBackgroundColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_TABBAR_BACKGROUND_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getTabBarSelectedItemColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_TABBAR_SELECTED_ITEM_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor blueColor];
}
+(void) setTabBarSelectedItemColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_TABBAR_SELECTED_ITEM_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getTabBarUnSelectedItemColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_TABBAR_UNSELECTED_ITEM_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor grayColor];
}
+(void) setTabBarUnSelectedItemColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_TABBAR_UNSELECTED_ITEM_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getAttachmentIconColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_ATTACHMENT_ITEM_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor grayColor];
}
+(void) setAttachmentIconColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_ATTACHMENT_ITEM_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getSendIconColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_SEND_ITEM_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor whiteColor];
}
+(void) setSendIconColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_SEND_ITEM_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getMessageSubtextColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_MESSAGE_SUBTEXT_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor colorWithRed:144.0/255 green:144.0/255 blue:144.00/255 alpha:1.0];
}
+(void) setMessageSubtextColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_MESSAGE_SUBTEXT_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getMessageListTextColor{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_MESSAGE_TEXT_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor colorWithRed:107.0/255 green:107.0/255 blue:107.0/255 alpha:1.0];
}
+(void) setMessageListTextColor:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_MESSAGE_TEXT_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getProfileMainColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_PROFILE_MAIN_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor colorWithRed:0.00 green:0.48 blue:1.00 alpha:1.0];
}
+(void) setProfileMainColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_PROFILE_MAIN_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getProfileSubColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_PROFILE_SUB_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor colorWithRed:0.93 green:0.98 blue:1.00 alpha:1.0];
}
+(void) setProfileSubColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_PROFILE_SUB_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getNewContactMainColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_NEW_CONTACT_MAIN_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor colorWithRed:0.00 green:0.48 blue:1.00 alpha:1.0];
}
+(void) setNewContactMainColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_NEW_CONTACT_MAIN_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getNewContactSubColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_NEW_CONTACT_SUB_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor whiteColor];
}
+(void) setNewContactSubColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_NEW_CONTACT_SUB_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getNewContactTextColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_NEW_CONTACT_TEXT_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : nil;
}
+(void) setNewContactTextColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_NEW_CONTACT_TEXT_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getSearchBarTintColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_SEARCHBAR_TINT_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : nil;
}
+(void) setSearchBarTintColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_SEARCHBAR_TINT_COLOUR];
    [userDefaults synchronize];
}
+(UIColor *) getMessagesViewBackgroundColour{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_MESSAGES_VIEW_BG_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor whiteColor];
}
+(void) setMessagesViewBackgroundColour:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_MESSAGES_VIEW_BG_COLOUR];
    [userDefaults synchronize];
}

+(UIColor *) getChatViewControllerBackgroundColor{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *colorData = [userDefaults objectForKey:AL_CHAT_VIEW_BG_COLOUR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
    return color ? color : [UIColor colorWithRed:242.0/255 green:242.0/255 blue:242.0/255 alpha:1.0];
}
+(void) setChatViewControllerBackgroundColor:(UIColor *)color{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:AL_CHAT_VIEW_BG_COLOUR];
    [userDefaults synchronize];
}

+(void)showChannelMembersInfoInNavigationBar:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_CHANNEL_MEMBER_INFO_IN_SUBTITLE];
    [userDefaults synchronize];
}

+(NSArray *) metadataKeysToHideMessages
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults objectForKey:AL_HIDE_MESSAGES_WITH_METADATA_KEYS];
}

+(void) hideMessagesWithMetadataKeys:(NSArray *)keys
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:keys forKey:AL_HIDE_MESSAGES_WITH_METADATA_KEYS];
    [userDefaults synchronize];
}

+(BOOL)isMultiSelectGalleryViewDisabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:ALDisableMultiSelectGalleryView];
}
+(void)disableMultiSelectGalleryView:(BOOL)enabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:enabled forKey:ALDisableMultiSelectGalleryView];
    [userDefaults synchronize];
}

+(BOOL)is5MinVideoLimitInGalleryEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_5MIN_VIDEO_LIMIT_IN_GALLERY];
}
+(void)enable5MinVideoLimitInGallery:(BOOL)enabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:enabled forKey:AL_5MIN_VIDEO_LIMIT_IN_GALLERY];
    [userDefaults synchronize];
}

+(void)setBackgroundColorForAttachmentPlusIcon:(UIColor *)backgroundColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *backgroundColorData = [NSKeyedArchiver archivedDataWithRootObject:backgroundColor];
    [userDefaults setObject:backgroundColorData forKey:AL_BACKGROUND_COLOR_FOR_ATTACHMENT_PLUS_ICON];
    [userDefaults synchronize];
}

+(UIColor *)getBackgroundColorForAttachmentPlusIcon
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *backgroundColorData = [userDefaults objectForKey:AL_BACKGROUND_COLOR_FOR_ATTACHMENT_PLUS_ICON];
    UIColor *backgroundColor = [NSKeyedUnarchiver unarchiveObjectWithData:backgroundColorData];
    return backgroundColor;
}

+(void) clearAll
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSDictionary * dictionary = [userDefaults dictionaryRepresentation];
    NSArray * keyArray = [dictionary allKeys];
    for(NSString * defaultKeyString in keyArray)
    {
        if([defaultKeyString hasPrefix:@"com.applozic"] &&
           ![defaultKeyString isEqualToString:AL_APN_DEVICE_TOKEN] &&
           ![defaultKeyString isEqualToString:AL_VOIP_DEVICE_TOKEN]) {
            [userDefaults removeObjectForKey:defaultKeyString];
            [userDefaults synchronize];
        }
    }
}

+(BOOL)isTextStyleInCellEnabled
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_TEXT_STYLE_FOR_CELL];
}

+(void)enableTextStyleCell:(BOOL)flag
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_TEXT_STYLE_FOR_CELL];
    [userDefaults synchronize];
}

+(void)setChatCellTextFontSize:(float)fontSize
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setFloat:fontSize forKey:AL_CHAT_CELL_FONT_SIZE];
    [userDefaults synchronize];
}

+(float)getChatCellTextFontSize
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    float size = [userDefaults floatForKey:AL_CHAT_CELL_FONT_SIZE];
    return size ? size : 14;
}

+(void)setChannelCellTextFontSize:(float)fontSize
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setFloat:fontSize forKey:AL_CHANNEL_CELL_FONT_SIZE];
    [userDefaults synchronize];
}

+(float)getChannelCellTextFontSize
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    float size = [userDefaults floatForKey:AL_CHANNEL_CELL_FONT_SIZE];
    return size ? size : 14;
}

+(void)setBackgroundColorForAudioRecordingView:(UIColor *)backgroundColor {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *backgroundColorData = [NSKeyedArchiver archivedDataWithRootObject:backgroundColor];
    [userDefaults setObject:backgroundColorData forKey:AL_AUDIO_RECORDING_VIEW_BACKGROUND_COLOR];
    [userDefaults synchronize];
}
+(UIColor *)getBackgroundColorForAudioRecordingView {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *backgroundColorData = [userDefaults objectForKey:AL_AUDIO_RECORDING_VIEW_BACKGROUND_COLOR];
    UIColor *backgroundColor = [NSKeyedUnarchiver unarchiveObjectWithData:backgroundColorData];
    return backgroundColor ? backgroundColor : [UIColor lightGrayColor];
}

+(void)setColorForSlideToCancelText:(UIColor *)color {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *textColorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:textColorData forKey:AL_SLIDE_TO_CANCEL_TEXT_COLOR];
    [userDefaults synchronize];
}
+(UIColor *)getColorForSlideToCancelText {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *textColorData = [userDefaults objectForKey:AL_SLIDE_TO_CANCEL_TEXT_COLOR];
    UIColor *textColor = [NSKeyedUnarchiver unarchiveObjectWithData:textColorData];
    return textColor ? textColor : [UIColor darkGrayColor];
}

+(void)setColorForAudioRecordingText:(UIColor *)color {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *textColorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:textColorData forKey:AL_AUDIO_RECORDING_TEXT_COLOR];
    [userDefaults synchronize];
}
+(UIColor *)getColorForAudioRecordingText {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *textColorData = [userDefaults objectForKey:AL_AUDIO_RECORDING_TEXT_COLOR];
    UIColor *textColor = [NSKeyedUnarchiver unarchiveObjectWithData:textColorData];
    return textColor ? textColor : [UIColor redColor];
}

+(void)setFontForAudioView:(NSString *)font {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:font forKey:AL_AUDIO_RECORD_VIEW_FONT];
    [userDefaults synchronize];
}
//+(NSString *)getFontForAudioView {
//    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
//    NSString * font = [userDefaults valueForKey:AL_AUDIO_RECORD_VIEW_FONT];
//    return font ? font : @".SFUI-Regular";
//}

+ (void)enableNewAudioDesign:(BOOL)enable {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:enable forKey:AL_ENABLE_NEW_AUDIO_DESIGN];
    [userDefaults synchronize];
}

+ (BOOL)isNewAudioDesignEnabled {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_ENABLE_NEW_AUDIO_DESIGN];
}

+(void)setBackgroundColorForReplyView:(UIColor *)backgroudColor
{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *receiveColorData = [NSKeyedArchiver archivedDataWithRootObject:backgroudColor];
    [userDefaults setObject:receiveColorData forKey:AL_BACKGROUND_COLOR_FOR_REPLY_VIEW];
    [userDefaults synchronize];
}

+(UIColor *)getBackgroundColorForReplyView
{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *sendColorData = [userDefaults objectForKey:AL_BACKGROUND_COLOR_FOR_REPLY_VIEW];
    UIColor *backgroundColor = [NSKeyedUnarchiver unarchiveObjectWithData:sendColorData];
    if(backgroundColor)
    {
        return backgroundColor;
    }
    return [UIColor grayColor];

}

+(void) setHideMediaSelectOption:(NSMutableArray*)array{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:array forKey:AL_MEDIA_SELECT_OPTIONS];
    [userDefaults synchronize];
}

+(NSArray*) getHideMediaSelectOption{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults objectForKey:AL_MEDIA_SELECT_OPTIONS];
}

+(BOOL) imagesHiddenInGallery{
    return [self getHideMediaSelectOption] && [[self getHideMediaSelectOption] containsObject:@":image"];
}

+(BOOL) videosHiddenInGallery{
    return [self getHideMediaSelectOption] && [[self getHideMediaSelectOption] containsObject:@":video"];
}

+(void)setChannelActionMessageBgColor:(UIColor *)bgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * bgColorData = [NSKeyedArchiver archivedDataWithRootObject:bgColor];
    [userDefaults setObject:bgColorData forKey:AL_CHANNEL_ACTION_MESSAGE_BG_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getChannelActionMessageBgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * bgColorData = [userDefaults objectForKey:AL_CHANNEL_ACTION_MESSAGE_BG_COLOR];
    UIColor * bgColor = [NSKeyedUnarchiver unarchiveObjectWithData:bgColorData];
    return bgColor ? bgColor : [UIColor lightGrayColor];
}

+(void)setChannelActionMessageTextColor:(UIColor *)textColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * txtColorData = [NSKeyedArchiver archivedDataWithRootObject:textColor];
    [userDefaults setObject:txtColorData forKey:AL_CHANNEL_ACTION_MESSAGE_TEXT_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getChannelActionMessageTextColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData * textColorData = [userDefaults objectForKey:AL_CHANNEL_ACTION_MESSAGE_TEXT_COLOR];
    UIColor * txtColor = [NSKeyedUnarchiver unarchiveObjectWithData:textColorData];
    return txtColor ? txtColor : [UIColor blackColor];
}

+(void)setUserIconFirstNameColorCodes:(NSMutableDictionary*)nsMutableDictionary{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:nsMutableDictionary forKey:AL_ALPHABETIC_COLOR_CODES];
    [userDefaults synchronize];
}

+(NSArray*) getUserIconFirstNameColorCodes{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults objectForKey:AL_ALPHABETIC_COLOR_CODES];
}

+(void) setIsUnblockInChatDisabled:(BOOL)flag {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_DISABLE_UNBLOCK_FROM_CHAT];
    [userDefaults synchronize];
}

+(BOOL) isUnblockInChatDisabled {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    BOOL key =   [userDefaults boolForKey:AL_DISABLE_UNBLOCK_FROM_CHAT];
    return key;
}

+(void)setupSuiteAndMigrate {
    [ALApplozicSettings migrateUserDefaultsToAppGroups];
    NSUserDefaults *userDefaults = [[NSUserDefaults alloc] initWithSuiteName:AL_DEFAULT_APP_GROUP];
    [userDefaults setValue:AL_DEFAULT_APP_GROUP forKey:AL_SHARE_EXTENSION];
    [userDefaults synchronize];
}

+(NSString *)getShareExtentionGroup {

    NSUserDefaults *userDefaults = [[NSUserDefaults alloc] initWithSuiteName:AL_DEFAULT_APP_GROUP];
    return  [userDefaults valueForKey:AL_SHARE_EXTENSION];
}

+(NSUserDefaults *)getUserDefaults {
    return [[NSUserDefaults alloc] initWithSuiteName:AL_DEFAULT_APP_GROUP];
}

+(void) setUserDefaultsMigratedFlag:(BOOL)flag {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_USER_DEFAULTS_MIGRATION];
    [userDefaults synchronize];
}

+(BOOL) isUserDefaultsMigrated {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return  [userDefaults boolForKey:AL_USER_DEFAULTS_MIGRATION];
}

+(BOOL)isAddContactButtonForSenderDisabled
{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return  [userDefaults boolForKey:AL_SENT_MESSAGE_CONTACT_BUTTON];
}

+(void)disableAddContactButtonForSender
{
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:YES forKey:AL_SENT_MESSAGE_CONTACT_BUTTON];
    [userDefaults synchronize];
}

+(void)setColorForSentContactMsgLabel:(UIColor *)sentContactLabelMsgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *sendColorData = [NSKeyedArchiver archivedDataWithRootObject:sentContactLabelMsgColor];
    [userDefaults setObject:sendColorData forKey:AL_SENT_CONTACT_MSG_LABEL_COLOR];
    [userDefaults synchronize];
}

+(void)setColorForReceivedContactMsgLabel:(UIColor *)receivedMsgColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *receiveColorData = [NSKeyedArchiver archivedDataWithRootObject:receivedMsgColor];
    [userDefaults setObject:receiveColorData forKey:AL_RECEIVED_CONTACT_MSG_LABEL_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getSentContactMsgLabelColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *sentColorData = [userDefaults objectForKey:AL_SENT_CONTACT_MSG_LABEL_COLOR];
    UIColor *sentContactMsgLabelColor = [NSKeyedUnarchiver unarchiveObjectWithData:sentColorData];
    if(sentContactMsgLabelColor)
    {
        return sentContactMsgLabelColor;
    }
    return [UIColor whiteColor];
}

+(UIColor *)getReceivedContactMsgLabelColor
{   NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    NSData *receivedColorData = [userDefaults objectForKey:AL_RECEIVED_CONTACT_MSG_LABEL_COLOR];
    UIColor *recivedContactMsgLabelColor = [NSKeyedUnarchiver unarchiveObjectWithData:receivedColorData];
    if(recivedContactMsgLabelColor)
    {
        return recivedContactMsgLabelColor;
    }
    return [UIColor blackColor];
}

+(void)migrateUserDefaultsToAppGroups{
    //Old NSUserDefaults
    NSUserDefaults * oldUserDefaults =  [NSUserDefaults standardUserDefaults];
    NSDictionary *dictionary = [oldUserDefaults dictionaryRepresentation];

    NSArray * keyArray = [dictionary allKeys];

    for(NSString * defaultKeyString in keyArray)
    {
        if([defaultKeyString hasPrefix:AL_KEY_PREFIX] &&
           ![defaultKeyString isEqualToString:AL_APN_DEVICE_TOKEN] &&
           ![defaultKeyString isEqualToString:AL_VOIP_DEVICE_TOKEN]) {
            [oldUserDefaults removeObjectForKey:defaultKeyString];
            [oldUserDefaults synchronize];
        }
    }

    //Will use the deafault group for access and other places as well
    NSUserDefaults * groupUserDefaults = [[NSUserDefaults alloc] initWithSuiteName:AL_DEFAULT_APP_GROUP];
    if(groupUserDefaults != nil && ![ALApplozicSettings isUserDefaultsMigrated] ){
        for(NSString * key in dictionary.allKeys){
            [groupUserDefaults setObject:dictionary[key] forKey:key];
            [groupUserDefaults synchronize];
        }
        [ALApplozicSettings setUserDefaultsMigratedFlag:YES];
    }
}

+ (void)setImagePreviewBackgroundColor:(UIColor *)color {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    NSData *colorData = [NSKeyedArchiver archivedDataWithRootObject: color];
    [userDefaults setObject:colorData forKey:AL_IMAGE_PREVIEW_BACKGROUND_COLOR];
    [userDefaults synchronize];
}

+ (UIColor *)getImagePreviewBackgroundColor {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    NSData *receivedColorData = [userDefaults objectForKey: AL_IMAGE_PREVIEW_BACKGROUND_COLOR];
    UIColor *color = [NSKeyedUnarchiver unarchiveObjectWithData: receivedColorData];
    return (color != nil) ? color : [UIColor whiteColor];
}

+(void)restrictedMessageRegexPattern:(NSString *)pattern {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:pattern forKey:AL_RESTRICTED_MESSAGE_PATTERN];
    [userDefaults synchronize];
}

+(NSString *)getRestrictedMessageRegexPattern {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_RESTRICTED_MESSAGE_PATTERN];
}

+(void)disableInAppNotificationTap:(BOOL)flag {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_DISABLE_NOTIFICATION_TAP];
    [userDefaults synchronize];
}

+(BOOL)isInAppNotificationTapDisabled {
    NSUserDefaults * userDefaults  =  ALApplozicSettings.getUserDefaults;
    return   [userDefaults boolForKey:AL_DISABLE_NOTIFICATION_TAP];
}

+(void)disableGroupListingTab:(BOOL)flag {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_GROUPS_LIST_TAB];
    [userDefaults synchronize];
}

+(BOOL)isGroupListingTabDisabled {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    return [userDefaults boolForKey:AL_GROUPS_LIST_TAB];
}

+(void)enableMessageSearch:(BOOL)flag {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_MESSAGE_SEARCH];
    [userDefaults synchronize];
}

+(BOOL)isMessageSearchEnabled {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    return [userDefaults boolForKey:AL_MESSAGE_SEARCH];
}

+(void)enableMessageDeleteForAllOption:(BOOL)flag {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    [userDefaults setBool:flag forKey:AL_MESSAGE_DELETE_FOR_ALL_ENABLED];
    [userDefaults synchronize];
}

+(BOOL)isMessageDeleteForAllEnabled {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    return [userDefaults boolForKey:AL_MESSAGE_DELETE_FOR_ALL_ENABLED];
}

+(void)setPhotosSelectionLimit:(NSInteger)selectionLimit {
    NSUserDefaults *userDefaults = ALApplozicSettings.getUserDefaults;
    if (selectionLimit < 1 || selectionLimit > 20) {
        selectionLimit = 10;
    }
    [userDefaults setInteger:selectionLimit forKey:AL_PHOTO_PICKER_SELECTION_LIMIT];
    [userDefaults synchronize];
}

+(NSInteger)getPhotosSelectionLimit {
    NSUserDefaults *userDefaults = ALApplozicSettings.getUserDefaults;
    NSInteger limit = [userDefaults integerForKey:AL_PHOTO_PICKER_SELECTION_LIMIT];
    return limit > 0 ? limit : 10;
}

+(void)setMessageMetadata:(NSMutableDictionary *) messageMetadata {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    [userDefaults setObject:messageMetadata forKey:AL_MESSAGE_META_DATA_KEY];
    [userDefaults synchronize];
}

+(NSMutableDictionary *)getMessageMetadata {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    NSDictionary * metadataDictionary = [userDefaults dictionaryForKey:AL_MESSAGE_META_DATA_KEY];
    NSMutableDictionary * messageMetadata = nil;
    if (metadataDictionary) {
        messageMetadata = [metadataDictionary mutableCopy];
    }
    return messageMetadata;
}

+(void)setSupportContactUserId:(NSString *)userId {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:userId forKey:AL_SUPPORT_CONTACT_USER_ID];
    [userDefaults synchronize];
}

+(NSString *)getSupportContactUserId {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:AL_SUPPORT_CONTACT_USER_ID];
}

+(void)setAppointmentDate:(NSString *)date {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:date forKey:DUULY_APPOINTMENT_DATE];
    [userDefaults synchronize];
}

+(NSString *)getAppointmentDate {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:DUULY_APPOINTMENT_DATE];
}

+(void)setAppointmentId:(NSString *)ID {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    [userDefaults setValue:ID forKey:DUULY_APPOINTMENT_ID];
    [userDefaults synchronize];
}

+(NSString *)getAppointmentId {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    return [userDefaults valueForKey:DUULY_APPOINTMENT_ID];
}

+(void)setAppointmentColor:(UIColor *)color {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    NSData * colorData = [NSKeyedArchiver archivedDataWithRootObject:color];
    [userDefaults setObject:colorData forKey:DUULY_APPOINTMENT_COLOR];
    [userDefaults synchronize];
}

+(UIColor *)getAppointmentColor {
    NSUserDefaults * userDefaults = ALApplozicSettings.getUserDefaults;
    NSData * colorData = [userDefaults objectForKey:DUULY_APPOINTMENT_COLOR];
    return [NSKeyedUnarchiver unarchiveObjectWithData:colorData];
}

@end
