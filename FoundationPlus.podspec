Pod::Spec.new do |s|
  s.name             = "FoundationPlus"
  s.version          = "1.0.1"
  s.summary          = "The missing Foundation methods"
  s.homepage         = "https://github.com/JamieREvans/FoundationPlus"
  s.license          = 'MIT'
  s.author           = { "Jamie Evans" => "jamie.riley.evans@gmail.com" }
  s.source           = { :git => "https://github.com/JamieREvans/FoundationPlus.git", :tag => s.version.to_s }

  s.ios.deployment_target = '6.0'
  s.osx.deployment_target = '10.8'
  s.requires_arc = true

  s.source_files     = 'Pod/Classes/*.{h,m}', 'Pod/Classes/**/*.{h,m}'
  s.resource_bundles = {
    'FoundationPlus' => ['Pod/Assets/*.png']
  }
end
