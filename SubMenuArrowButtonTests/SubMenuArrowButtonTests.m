
#import <XCTest/XCTest.h>
#import "WAHSubMenuArrowButton.h"

@interface SubMenuArrowButtonTests : XCTestCase

@end

@implementation SubMenuArrowButtonTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testSubMenuArrowButtonCanCreateWithoutTitle
{
    XCTAssertNotNil([WAHSubMenuArrowButton subMenuArrowButton], @"sub menu arrow button can create without title");
}

- (void)testSubMenuArrowButtonCanCreateWithNilTitle
{
    XCTAssertNotNil([WAHSubMenuArrowButton subMenuArrowButtonWithTitle:nil], @"sub menu arrow button can create with nil title");
}

@end
