
#import "UIBezierPath+WAHSubMenuArrow.h"

@implementation UIBezierPath (WAHSubMenuArrow)

+ (UIBezierPath *)wah_subMenuArrowPathDirectionBottom
{
    CGSize const triangleSize = CGSizeMake(9.0,
                                           5.0);
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint:CGPointMake(triangleSize.width / 2.0,
                                        triangleSize.height)];
    [bezierPath addLineToPoint:CGPointMake(triangleSize.width,
                                           0.0)];
    [bezierPath addLineToPoint:CGPointMake(0.0,
                                           0.0)];
    [bezierPath addLineToPoint:CGPointMake(triangleSize.width / 2.0,
                                           triangleSize.height)];
    [bezierPath closePath];
    return bezierPath;
}

@end
