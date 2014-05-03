
#import "MyViewController.h"
#import "UIImage+WAHBezierPath.h"
#import "WAHSubMenuArrowButton.h"

@implementation MyViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self addLeftBarButtonItem];
    [self addRightBarButtonItem];

    [self addTitleView];
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
}

- (void)addTitleView
{
    WAHSubMenuArrowButton *subMenuButton = [WAHSubMenuArrowButton subMenuArrowButtonWithTitle:@"Purchased Books"];
    subMenuButton.titleLabel.font = [UIFont boldSystemFontOfSize:18.0];
    [subMenuButton sizeToFit];
    self.navigationItem.titleView = subMenuButton;
    
    [subMenuButton addTarget:self
                      action:@selector(action:)
            forControlEvents:UIControlEventTouchUpInside];
}

- (void)addLeftBarButtonItem
{
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:nil
                                                                            action:NULL];
}

- (void)addRightBarButtonItem
{
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Right"
                                                                              style:UIBarButtonItemStylePlain
                                                                             target:nil
                                                                             action:NULL];
}

- (void)action:(id)sender
{
    printf("action\n");
}

@end
