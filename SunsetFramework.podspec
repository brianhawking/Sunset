Pod::Spec.new do |spec|

  spec.name         = "SunsetFramework"
  spec.version      = "1.0.2"
  spec.summary      = "Comprehensive UI framework for Sunset projects"
  spec.description  = "Framework for commonly used UI components such as padding, colors, alerts, UIView extensions."

  spec.homepage     = "https://github.com/brianhawking/Sunset.git"

  spec.license      = "MIT"

  spec.author             = { "Brian Veitch" => "beveitch@gmail.com" }

  spec.platform     = :ios
  spec.platform     = :ios, "13.4"
  spec.source       = { :git => "https://github.com/brianhawking/Sunset.git", :tag => spec.version}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "SunsetFramework/SunsetFramework/**/*.swift"
  spec.swift_versions = "5.0"
end
