//
//  ViewController.m
//  objective-c
//
//  Created by Do Trinh on 2021/09/14.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    unsigned char data[] = { 0x65, 0x66, 0x67};
    long ret = 0;
    ret |= (long)(data[0] & 0x7F) << 25;
    ret |= (long)(data[1] & 0x7F) << 18;
    ret |= (long)(data[2] & 0x7F) << 11;
    NSLog(@"decimal: %ld", ret);
    
    //kq su dung 7 bit trong 3 byte nay la: 3 415 947 264
    //max co the dat dc khi su dung 7 bit trong 3 byte: 4 294 966 272
    
    /*
     co the that long = int va dich chuyen het cac bit ve phia ben phai cho tiet kiem bo nho
     11111111 11111111 11111111 00000000
     ↓
     00000000 11111111 11111111 11111111
     */
}

@end
