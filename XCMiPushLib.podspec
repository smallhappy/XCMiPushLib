#
# Be sure to run `pod lib lint XCMiPushLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XCMiPushLib'
  s.version          = '0.1.1'
  s.summary          = '集成小米推送'
  s.description      = '集成小米推送(MiPush_Client_iOS_20191112)'
  s.homepage         = 'https://example.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xc_jeff' => 'https://example.com' }
  s.source           = { :git => 'https://github.com/smallhappy/XCMiPushLib.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  
  s.source_files = 'XCMiPushLib/Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'UserNotifications', 'SystemConfiguration', 'MobileCoreServices', 'CFNetwork', 'CoreTelephony'
  s.libraries = 'resolv', 'xml2', 'z'
  s.vendored_library = 'XCMiPushLib/Classes/libMiPushSDK/libMiPushSDK.a'
  s.static_framework = true
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'OTHER_LDFLAGS' => '-ObjC' }
end
