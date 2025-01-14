//
//  QBCommonCacheManger.h
//  Runner
//
//  Created by 乔彪 on 2025/1/14.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QBCommonCacheManger : NSObject
+(void)WriteObjectToUserDefaults:(id)object forKey:(NSString *)key;
+(id)ReadObjectFormUserDefaultsWithKey:(NSString *)key;
+(void)DeleteObjectFromUserDefaultsWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
