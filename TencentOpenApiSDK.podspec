Pod::Spec.new do |s|
  s.name                = "TencentOpenApiSDK"
  s.version             = "3.5.5"
  s.summary             = "The Official iOS SDK of Tencent Open API."
  s.homepage            = "http://wiki.open.qq.com"
  s.license             = {
    :type => 'Copyright',
    :text => <<-LICENSE
      Copyright (c) 2014 Tencent. All rights reserved.
      LICENSE
  }
  s.author              = { "OpenQQ" => "opensupport@qq.com" }
  s.platform            = :ios
  s.requires_arc        = true

  s.source              = { :git=> "https://github.com/ccnyou/TencentOpenApiSDK.git", :tag => "#{s.version}" }
  s.xcconfig            = { "FRAMEWORK_SEARCH_PATHS" => "$(inherited)" }

  s.libraries           = 'iconv', 'z', 'c++', 'sqlite3'
  s.frameworks          = 'Security', 'SystemConfiguration', 'CoreGraphics', 'CoreTelephony'
  s.resources           = "TencentOpenAPI.bundle"
  s.vendored_frameworks = "TencentOpenAPI.framework"
end
