//
//  QBCommonCacheManger.m
//  Runner
//
//  Created by 乔彪 on 2025/1/14.
//

#import "QBCommonCacheManger.h"

#define safeQBNSString(object) ![object respondsToSelector:@selector(boolValue)] ? @"" : [[NSString stringWithFormat:@"%@", object] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]]

@implementation QBCommonCacheManger
+(void)WriteObjectToUserDefaults:(id)object forKey:(NSString *)key {
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:object forKey:safeQBNSString(key)];
    [defaults synchronize];
     NSLog(@"qb:已经存数据");
}
+(id)ReadObjectFormUserDefaultsWithKey:(NSString *)key
{
    NSLog(@"qb:开始读取数据了");
    return [[NSUserDefaults standardUserDefaults] objectForKey:safeQBNSString(key)];
}
+(void)DeleteObjectFromUserDefaultsWithKey:(NSString *)key
{
    NSLog(@"qb:删除数据了");
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:safeQBNSString(key)];
    [defaults synchronize];
}
@end
