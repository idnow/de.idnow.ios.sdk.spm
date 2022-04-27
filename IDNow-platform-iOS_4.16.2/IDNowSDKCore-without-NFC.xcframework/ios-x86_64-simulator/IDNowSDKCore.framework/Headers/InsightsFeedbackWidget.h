// InsightsFeedbackWidget.h
//
 
//
 

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NSString* INSFeedbackWidgetType NS_EXTENSIBLE_STRING_ENUM;
extern INSFeedbackWidgetType const INSFeedbackWidgetTypeSurvey;
extern INSFeedbackWidgetType const INSFeedbackWidgetTypeNPS;


@interface InsightsFeedbackWidget : NSObject
#if (TARGET_OS_IOS)

@property (nonatomic, readonly) INSFeedbackWidgetType type;
@property (nonatomic, readonly) NSString* ID;
@property (nonatomic, readonly) NSString* name;

- (void)present;

#endif
@end

NS_ASSUME_NONNULL_END
