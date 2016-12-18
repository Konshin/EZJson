Pod::Spec.new do |s|
  s.name       		 	 = "EZJson"
  s.version    			 = "1.0.1"
  s.summary     		 = "The simplest JSON parser."
  s.homepage   			 = "https://github.com/Konshin/EZJson"
  s.license    			 = { :type => 'MIT', :file => 'LICENSE' }
  s.author      		 = "Konshin"

  s.ios.deployment_target	 = '8.0'
  s.osx.deployment_target	 = '10.10'

  s.source      		 = { :git => "https://github.com/Konshin/EZJson.git", :tag => s.version }  
  s.source_files		 = "EZJson/**/*.{swift}"

  s.xcconfig    		 = { "OTHER_LDFLAGS" => "-lz" }
end
