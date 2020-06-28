#import "IdentityClientPlugin.h"
#if __has_include(<identity_client/identity_client-Swift.h>)
#import <identity_client/identity_client-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "identity_client-Swift.h"
#endif

@implementation IdentityClientPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIdentityClientPlugin registerWithRegistrar:registrar];
}
@end
