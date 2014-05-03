
#import <UIKit/UIKit.h>

@interface WAHSubMenuArrowButton : UIButton

@property (nonatomic, assign) CGFloat titleAndImageMargin;
@property (nonatomic, assign) CGSize  titleOffset;

+ (WAHSubMenuArrowButton *)subMenuArrowButton;

+ (WAHSubMenuArrowButton *)subMenuArrowButtonWithTitle:(NSString *)title;//< designated initializer

@end
