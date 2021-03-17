#
# Be sure to run `pod lib lint igrant-indySDK-support.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'igrant-indySDK-support'
  s.version          = '0.1.0'
  s.summary          = 'A short description of igrant-indySDK-support.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/rebinkpmna@gmail.com/igrant-indySDK-support'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'rebin@igrant.io' => 'rebin@igrant.io' }
  s.source           = {  :http =>  "https://repo.sovrin.org/ios/libindy/stable/libindy-core/1.15.0/libindy.tar.gz"
}
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  s.library = ['c++','z','stdc++']
  s.requires_arc = false
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' ,
      'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
  s.swift_version = '5.0'

    s.xcconfig = {
         'CLANG_CXX_LANGUAGE_STANDARD' => 'c++11',
         'CLANG_CXX_LIBRARY' => 'libc++',
         'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
         'USER_HEADER_SEARCH_PATHS' => '"${PROJECT_DIR}/.."/**',
         'OTHER_LDFLAGS' => '-ObjC'
    }
  s.ios.deployment_target = '13.0'

  s.source_files = '*.{h,a}'
  s.vendored_libraries = "*.a"
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  # s.resource_bundles = {
  #   'igrant-indySDK-support' => ['igrant-indySDK-support/Assets/*.png']
  # }

   s.public_header_files = '\"$(PODS_ROOT)/libindy/*.h"'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
