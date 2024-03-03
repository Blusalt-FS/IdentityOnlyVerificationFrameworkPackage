#
#  Be sure to run `pod spec lint BlusaltLivenessOnly.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #
  
  spec.name = 'IdentityOnlyVerificationFramework' # name of the framework
  spec.version = '0.0.12' # same as github tag version
  spec.license = { :type => 'MIT' }
  spec.homepage = 'https://blusalt.net' # Website with details about pod or github repository link
  spec.authors = { 'Opeyemi Folarin' => 'folarin@blusalt.net' } # name & email address of the framework author
  spec.platform = :ios, "14.0"
  spec.summary = 'Blusalt IdentityOnlyVerificationFramework SDK for ios'
  spec.source = { :git => 'https://github.com/Blusalt-FS/IdentityOnlyVerificationFrameworkPackage.git', :tag => 'v0.0.12' } # url to clone the framework, tag may be same as spec.version
  # spec.source_files = 'Classes/**/*.{h,m,swift}' # add the regex to access                all the files for the framework ex: ‘FrameworkName/**/*.{h,m,swift}’
    
  # spec.swift_version = '5.7'
  
  #Below are added for local importation
  spec.vendored_frameworks = 'Sources/IdentityOnlyVerificationFramework.xcframework'
  spec.xcconfig = {
  'VALID_ARCHS[sdk=iphoneos*]' => '$(ARCHS_STANDARD)'
  }
  spec.pod_target_xcconfig = {
  'VALID_ARCHS[sdk=iphoneos*]' => '$(ARCHS_STANDARD)',
  'VALID_ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD)'}
  spec.user_target_xcconfig = {
  'VALID_ARCHS[sdk=iphoneos*]' => '$(ARCHS_STANDARD)',
  'VALID_ARCHS[sdk=iphonesimulator*]' => '$(ARCHS_STANDARD)'}
end
