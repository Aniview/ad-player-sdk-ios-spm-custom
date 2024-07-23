sdkVersion = "1.11.7"

Pod::Spec.new do |s|
  s.name         = "AdPlayerSDK"
  s.version      = "#{sdkVersion}"
  s.summary      = "AdPlayerSDK framework"

  s.homepage     = "https://github.com/Aniview/ad-player-sdk-ios-pods"
  s.license      = { :type => 'Copyright', text: 'All rights reserved to ANIVIEW LTD' }
  s.author           = 'Aniview'

  s.platform      = :ios, "12.0"
  s.swift_version = "5.3"

  s.source        = { :http => "https://github.com/Aniview/ad-player-sdk-ios-pods/releases/download/#{sdkVersion}/AdPlayerSDK.zip" }
  s.static_framework = false

  s.module_name  = "AdPlayerSDK"
  s.vendored_frameworks = "AdPlayerSDK.xcframework"
  s.dependency 'GoogleAds-IMA-iOS-SDK', '~> 3.1'

  # Note: 'RxSwift' is an optional dependency (weak linking)
  # Podfile:'use_frameworks!' is requited for RxSwift

  end
