#
# Be sure to run `pod lib lint AnimaticsBond.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AnimaticsBond'
  s.version          = '1.1.0'
  s.summary          = 'A framework used to bind animations with Bond'

  s.description      = <<-DESC
    AnimaticsBond is a framework which helps you to bind Animatics animations with Bond events
                       DESC

  s.homepage         = 'https://github.com/Anvics/AnimaticsBond.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Nikita Arkhipov' => 'nikitarkhipov@gmail.com' }
  s.source           = { :git => 'https://github.com/Anvics/AnimaticsBond.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'AnimaticsBond/Classes/**/*'
  
  # s.resource_bundles = {
  #   'AnimaticsBond' => ['AnimaticsBond/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'Bond', '~> 7.2.0'
  s.dependency 'Animatics', '~> 1.1.0'
end
