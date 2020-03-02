#
# Be sure to run `pod lib lint XCMiPushLib.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XCMiPushLib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of XCMiPushLib.'
  s.description      = '集成小米推送'
  s.homepage         = 'http://example.com'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'xc_jeff' => '' }
  s.source           = { :http => '.' }
  s.ios.deployment_target = '8.0'
  
  s.source_files = 'XCMiPushLib/Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.frameworks = 'UserNotifications', 'SystemConfiguration', 'MobileCoreServices', 'CFNetwork', 'CoreTelephony'
  s.libraries = 'resolv', 'xml2', 'z'
  s.vendored_library = 'Classes/libMiPushSDK/libMiPushSDK.a'
  s.static_framework = true
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64', 'OTHER_LDFLAGS' => '-ObjC' }
end
