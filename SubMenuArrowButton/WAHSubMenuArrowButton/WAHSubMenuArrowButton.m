
#import "WAHSubMenuArrowButton.h"
#import "UIBezierPath+WAHSubMenuArrow.h"
#import "UIImage+WAHBezierPath.h"

@implementation WAHSubMenuArrowButton

+ (id)buttonWithType:(UIButtonType)buttonType
{
    return [super buttonWithType:buttonType];
}

+ (WAHSubMenuArrowButton *)subMenuArrowButton
{
    return [self subMenuArrowButtonWithTitle:nil];
}

+ (WAHSubMenuArrowButton *)subMenuArrowButtonWithTitle:(NSString *)title
{
    BOOL isSystemTypeButtonAvailable = ([[[UIDevice currentDevice] systemVersion] compare:@"7.0" options:NSNumericSearch] != NSOrderedAscending);

    WAHSubMenuArrowButton *button = (isSystemTypeButtonAvailable ? [super buttonWithType:UIButtonTypeSystem] : [[self alloc] init]);
    button.titleAndImageMargin = 2.0;
    button.titleOffset = CGSizeZero;
    
    [button setTitle:title
            forState:UIControlStateNormal];
    
    [button setupImagesAndColors];
    
    [button sizeToFit];
    return button;
}

- (UIEdgeInsets)imageEdgeInsets
{
    UIImage *image = [self imageForState:UIControlStateNormal];
    CGFloat fromBottom = (NSInteger)((CGRectGetHeight(self.bounds) - image.size.height) / 2);
    UIEdgeInsets insets = UIEdgeInsetsMake((CGRectGetHeight(self.bounds) - (image.size.height + fromBottom)),
                                           (CGRectGetWidth(self.bounds)  - image.size.width),
                                           fromBottom,
                                           0.0);
    return insets;
}

- (UIEdgeInsets)titleEdgeInsets
{
    UIImage *image = [self imageForState:UIControlStateNormal];
    CGSize titleOffset = self.titleOffset;
    UIEdgeInsets insets = UIEdgeInsetsMake(titleOffset.height,
                                           titleOffset.width,
                                           0.0,
                                           (image.size.width + self.titleAndImageMargin));
    return insets;
}


- (CGSize)sizeThatFits:(CGSize)size
{
    UIImage *image = [self imageForState:UIControlStateNormal];
    CGSize titleOffset = self.titleOffset;
    CGSize titleSize = [super sizeThatFits:size];
    CGSize sizeToFit = CGSizeMake((titleOffset.width + titleSize.width + self.titleAndImageMargin + image.size.width),
                                  (titleOffset.height + titleSize.height));
    sizeToFit = CGSizeMake(MIN(sizeToFit.width,  size.width),
                           MIN(sizeToFit.height, size.height));
    return sizeToFit;
}

- (UIView *)viewForBaselineLayout
{
    UIView *viewForBaselineLayout = [super viewForBaselineLayout];
    return viewForBaselineLayout;
}

- (CGRect)backgroundRectForBounds:(CGRect)bounds
{
    CGRect rect = [super backgroundRectForBounds:bounds];
    return rect;
}

- (void)setHighlighted:(BOOL)highlighted
{
    if (self.buttonType != UIButtonTypeSystem) {
        [self.titleLabel setHighlighted:highlighted];
    }
    [super setHighlighted:highlighted];
}

- (void)setupImagesAndColors
{
    BOOL isSystemTypeButton = (self.buttonType == UIButtonTypeSystem);
    UIBezierPath *subMenuArrowPath = [UIBezierPath wah_subMenuArrowPathDirectionBottom];
    
    if (isSystemTypeButton) {
        UIImage *image = [UIImage wah_imageWithBezierPathFill:subMenuArrowPath];
        [self setImage:image
              forState:UIControlStateNormal];
    }
    else {
        UIColor *textColor = self.titleLabel.textColor;
        UIColor *highlightedTextColor = [UIColor lightTextColor];
        
        {
            UIImage *image = [UIImage wah_imageWithBezierPathFill:subMenuArrowPath
                                                            color:textColor];
            [self setImage:image
                  forState:UIControlStateNormal];
        }
        {
            UIImage *highlightedImage = [UIImage wah_imageWithBezierPathFill:subMenuArrowPath
                                                                       color:highlightedTextColor];
            [self setImage:highlightedImage
                  forState:UIControlStateHighlighted];
        }
        self.titleLabel.highlightedTextColor = highlightedTextColor;
    }
}

@end
