Pod::Spec.new do |s|

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |configuration|
      configuration.build_settings['SWIFT_VERSION'] = "3.0"
    end
  end
end


  s.name = 'SwiftLocation'
  s.version = '1.1.0'
  s.license = 'MIT'
  s.summary = 'Elegant Location Services and Beacon Monitoring in Swift'
  s.homepage = 'https://github.com/malcommac/SwiftLocation'
  s.social_media_url = 'http://twitter.com/danielemargutti'
  s.authors = { 'Daniele Margutti' => 'hello@danielemargutti.com' }
  s.source = { :git => 'https://github.com/malcommac/SwiftLocation.git', :tag => s.version }
  s.ios.deployment_target = '8.0'
  s.frameworks            = "CoreLocation", "MapKit", "Foundation"
  s.source_files = 'src/*.swift'
end