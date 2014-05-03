
#import "UIImage+WAHBezierPath.h"

@implementation UIImage (WAHBezierPath)

+ (UIImage *)wah_imageWithBezierPathFill:(UIBezierPath *)bezierPath color:(UIColor *)color
{
    return [self wah_imageWithBezierPath:bezierPath
                                    fill:YES
                                  stroke:NO
                                   scale:[[UIScreen mainScreen] scale]
                                   color:color];
}

+ (UIImage *)wah_imageWithBezierPathFill:(UIBezierPath *)bezierPath
{
    return [self wah_imageWithBezierPathFill:bezierPath
                                       color:nil];
}

+ (UIImage *)wah_imageWithBezierPathStroke:(UIBezierPath *)bezierPath
{
    return [self wah_imageWithBezierPathStroke:bezierPath
                                         color:nil];
}

+ (UIImage *)wah_imageWithBezierPathStroke:(UIBezierPath *)bezierPath color:(UIColor *)color
{
    return [self wah_imageWithBezierPath:bezierPath
                                    fill:NO
                                  stroke:YES
                                   scale:[[UIScreen mainScreen] scale]
                                   color:color];
}

+ (UIImage *)wah_imageWithBezierPath:(UIBezierPath *)bezierPath
                                fill:(BOOL)fill
                              stroke:(BOOL)stroke
                               scale:(CGFloat)scale
                               color:(UIColor *)color
{
    UIImage *image = nil;
    if (bezierPath) {
        UIGraphicsBeginImageContextWithOptions(bezierPath.bounds.size, NO, scale);
        if (fill) {
            [color setFill];
            [bezierPath fill];
        }
        if (stroke) {
            [color setStroke];
            [bezierPath stroke];
        }
        image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
    }
    return image;
}

@end
