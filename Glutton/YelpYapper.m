//
//  YelpYapper.m
//  Glutton
//
//  Created by Tyler on 4/2/15.
//  Copyright (c) 2015 TylerCo. All rights reserved.
//

#import "YelpYapper.h"
#import <AFNetworking/AFNetworking.h>
#import "NSURLRequest+OAuth.h"

/**
 Default paths and search terms used in this example
 */
static NSString * const kAPIHost           = @"api.yelp.com";
static NSString * const kSearchPath        = @"/v2/search/";
static NSString * const kBusinessPath      = @"/v2/business/";
static NSString * const kRatingPath        = @"http://s3-media4.fl.yelpassets.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_";

@implementation YelpYapper

+ (NSArray *)getBusinesses {
//    NSLog(@"Should be getting called");
    return [self getBusinesses:0.0];
}

+ (NSArray *)getBusinesses:(float)offsetFromCurrentLocation {
//    NSLog(@"In the other business method");
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [[manager HTTPRequestOperationWithRequest:[self searchRequest:CLLocationCoordinate2DMake(0.0, 0.0)] success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",[responseObject objectForKey:@"businesses"]);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@", error);
    }] start];
    return nil;
}

+ (NSArray *)getBusinessDetail:(NSArray *)ids {
    return nil;
}

+ (NSURL *)URLforBusinesses {
    return nil;
}

+ (NSURLRequest *)searchRequest:(CLLocationCoordinate2D)coord {
    NSDictionary *params = @{
                             @"ll": [NSString stringWithFormat:@"%f,%f", coord.latitude, coord.longitude],
                             @"category_filter": @"restaurants",
                             @"sort": @1
                             };
    return [NSURLRequest requestWithHost:kAPIHost path:kSearchPath params:params];
}

+ (NSURLRequest *)businessRequest:(NSString *)business {
    NSString *businessPath = [NSString stringWithFormat:@"%@%@", kBusinessPath, business];
    return [NSURLRequest requestWithHost:kAPIHost path:businessPath];
}

+ (NSURL *)URLforRatingAsset:(NSString *)rating {
    NSString *endPoint = [NSString stringWithFormat:@"%@.png", rating.length > 1 ? [rating stringByReplacingOccurrencesOfString:@".5" withString:@"_half"] : rating];
    return [NSURL URLWithString:[kRatingPath stringByAppendingString:endPoint]];
}

+ (NSString *)CategoryString:(NSArray *)categoryArray {
    NSMutableString *returnString = [[NSMutableString alloc] init];
    for (NSArray *category in categoryArray) {
        [returnString appendFormat:@"%@, ", category[0]];
    }
    return [returnString substringToIndex:[returnString length]-3];
}

@end
