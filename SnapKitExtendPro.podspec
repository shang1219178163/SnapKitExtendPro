
Pod::Spec.new do |s|
  s.name             = 'SnapKitExtendPro'
  s.version          = '1.0.1'
  s.summary          = 'A short description of SnapKitExtendPro.'
  s.description      = 'TODO: Add long description of the pod here.'

  s.homepage         = 'https://github.com/shang1219178163/SnapKitExtendPro'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'shang1219178163' => 'shang1219178163@gmail.com' }
  s.source           = { :git => 'https://github.com/shang1219178163/SnapKitExtendPro.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = "5.0"
  s.requires_arc = true

  s.source_files = 'SnapKitExtendPro/Classes/**/*'
  s.dependency 'SnapKit'
  
end
