Pod::Spec.new do |spec|

  spec.name         = "testModuleA"
  spec.version      = "0.0.2"
  spec.summary      = "基础组件"
  spec.description  = "杭州通用基础组件"
  spec.homepage     = "https://github.com/yangshiyu666/testModuleA"
  spec.license      = "MIT"
  spec.author             = { "DJAPpple_4" => "6606302@qq.com" }
  spec.platform     = :ios
  spec.ios.deployment_target = "8.0"
  spec.source       = { :git => "https://github.com/yangshiyu666/testModuleA.git", :tag => "#{spec.version}" }
  spec.source_files  =  "testModuleA/Classes/**/*.{h,m}"
  spec.requires_arc = true
  spec.dependency  "SDWebImage"
  spec.dependency "testModule"

end
