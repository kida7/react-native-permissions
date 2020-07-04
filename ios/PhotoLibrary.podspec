require 'json'
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name                      = "Permission-PhotoLibrary"
  s.dependency                  "RNPermissions"

  s.version                   = package["version"]
  s.license                   = package["license"]
  s.summary                   = package["description"]
  s.authors                   = package["author"]
  s.homepage                  = package["homepage"]

  s.platform                  = :ios, "8.0"
  s.ios.deployment_target     = "8.0"
  s.tvos.deployment_target    = "11.0"
  s.requires_arc              = true

  s.source                    = { :git => package["repository"]["url"], :tag => s.version }
  s.source_files              = "ios/PhotoLibrary/*.{h,m}"
end
