
#import <UIKit/UIKit.h>

@interface UIImage (WAHBezierPath)

+ (UIImage *)wah_imageWithBezierPathFill:(UIBezierPath *)bezierPath;
+ (UIImage *)wah_imageWithBezierPathFill:(UIBezierPath *)bezierPath color:(UIColor *)color;

+ (UIImage *)wah_imageWithBezierPathStroke:(UIBezierPath *)bezierPath;
+ (UIImage *)wah_imageWithBezierPathStroke:(UIBezierPath *)bezierPath color:(UIColor *)color;

@end
