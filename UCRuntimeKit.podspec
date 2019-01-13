#
# Be sure to run `pod lib lint UCRuntimeKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'UCRuntimeKit'
  s.version          = '1.0'
  s.summary          = '一个runtime架构模板'
  s.description      = <<-DESC
一个利用runtime解耦的安全mediator
                       DESC

  s.homepage         = 'git@github.com:TryRuntime/UCRuntimeKit.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Link' => 'fanyang_32012@outlook.com' }
  s.source           = { :git => 'https://github.com/TryRuntime/UCRuntimeKit.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'UCRuntimeKit/Classes/**/*'
end
