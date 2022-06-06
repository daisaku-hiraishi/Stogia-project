#import "StogiaPlugin.h"
#if __has_include(<stogia/stogia-Swift.h>)
#import <stogia/stogia-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "stogia-Swift.h"
#endif

@implementation StogiaPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftStogiaPlugin registerWithRegistrar:registrar];
}
@end
