Pod::Spec.new do |spec|
  spec.name         = 'GZ-NMSSH'
  spec.version      = '4.0.0'
  spec.summary      = 'NMSSH is a clean, easy-to-use, unit tested framework for iOS and OSX that wraps libssh2.'
  spec.homepage     = 'https://github.com/gaetanzanella/NMSSH'
  spec.license      = 'MIT'
  spec.authors      = { 'Christoffer Lejdborg' => 'hello@9muses.se', 'Tommaso Madonia' => 'tommaso@madonia.me' }
  
  spec.source       = { :git => 'https://github.com/gaetanzanella/NMSSH.git', :tag => spec.version.to_s }
  
  spec.requires_arc = true
  
  spec.source_files = 'NMSSH', 'NMSSH/**/*.{h,m}'
  spec.private_header_files = 'NMSSH/Config/*.h'
  spec.libraries    = 'z'
  
  spec.ios.deployment_target  = '5.0'
  spec.ios.framework          = 'CFNetwork'
  spec.ios.vendored_libraries = 'NMSSH-iOS/Libraries/lib/libssh2.a', 'NMSSH-iOS/Libraries/lib/libssl.a', 'NMSSH-iOS/Libraries/lib/libcrypto.a'
  spec.ios.source_files       = 'NMSSH-iOS', 'NMSSH-iOS/**/*.h' 
  
  spec.xcconfig = {
    'OTHER_LDFLAGS' => '-ObjC',
  }

end
