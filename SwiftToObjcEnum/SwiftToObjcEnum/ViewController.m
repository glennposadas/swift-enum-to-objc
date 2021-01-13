//
//  ViewController.m
//  SwiftToObjcEnum
//
//  Created by Glenn Posadas on 1/13/21.
//

#import "ViewController.h"
#import "SwiftToObjcEnum-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  
  NSDictionary<NSString *,id> *data = TestClass.enumDic;
  if ([data objectForKey:@"carType"] != nil) {
    NSLog(@"-----");
    NSLog(@"%@", [data objectForKey:@"carType"]);
    NSLog(@"-----");
    
    CarType carType = (CarType)[data objectForKey:@"carType"];
    switch (carType) {
      case CarTypeAuv:
        NSLog(@"AUV!");
        break;
        
      default:
        NSLog(@"Not AUV");
        break;
    }
  }
}


@end
