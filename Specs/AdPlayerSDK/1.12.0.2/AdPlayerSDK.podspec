sdkVersion = "1.12.0.2"

Pod::Spec.new do |s|
  s.name         = "AdPlayerSDK"
  s.version      = "#{sdkVersion}"
  s.summary      = "AdPlayerSDK framework"

  s.homepage     = "https://github.com/Aniview/ad-player-sdk-ios-pods"
  s.license      = { :type => 'Copyright', text: 'All rights reserved to ANIVIEW LTD' }
  s.author           = 'Aniview'

  s.platform      = :ios, "13.0"
  s.swift_version = "5.3"

  s.source        = { :http => "https://github.com/Aniview/ad-player-sdk-ios-spm-custom/releases/download/#{sdkVersion}/AdPlayerSDK.zip" }
  s.static_framework = false

  s.module_name  = "AdPlayerSDK"
  s.vendored_frameworks = "AdPlayerSDK.xcframework"
  s.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.1'


  end
