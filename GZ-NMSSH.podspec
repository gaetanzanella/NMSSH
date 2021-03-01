Pod::Spec.new do |spec|
  spec.name         = "GZ-NMSSH"
  spec.version      = "4.1.3"
  spec.summary      = "NMSSH is a clean, easy-to-use, unit tested framework for iOS and OSX that wraps libssh2."
  spec.homepage     = "https://github.com/gaetanzanella/NMSSH"
  spec.license      = 'MIT'
  spec.authors      = { "Christoffer Lejdborg" => "hello@9muses.se", "Tommaso Madonia" => "tommaso@madonia.me" }

  spec.source       = { :git => 'https://github.com/gaetanzanella/NMSSH.git', :tag => spec.version.to_s }

  spec.requires_arc = true
  spec.platform = :ios
  spec.platform = :osx

  spec.source_files = 'NMSSH', 'NMSSH/**/*.{h,m}'
  spec.public_header_files  = 'NMSSH/*.h', 'NMSSH/Protocols/*.h', 'NMSSH/Config/NMSSHLogger.h'
  spec.private_header_files = 'NMSSH/Config/NMSSH+Protected.h', 'NMSSH/Config/socket_helper.h'
  spec.libraries    = 'z'
  spec.framework    = 'CFNetwork'

  spec.ios.deployment_target  = '9.0'
  spec.ios.preserve_paths = 'NMSSH-iOS/libssh2'
  spec.ios.vendored_frameworks = ['NMSSH-iOS/libssh2/libcrypto.xcframework', 'NMSSH-iOS/libssh2/libssl.xcframework', 'NMSSH-iOS/libssh2/libssh2.xcframework']
  spec.ios.source_files       = 'NMSSH-iOS', 'NMSSH-iOS/libssh2/**/*.h'
  spec.ios.public_header_files  = 'NMSSH-iOS/libssh2/**/*.h'

  spec.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/GZ-NMSSH/NMSSH-iOS/libssh2',
    'LIBRARY_SEARCH_PATHS' => '$(PODS_ROOT)/GZ-NMSSH/NMSSH-iOS/libssh2',
    'SWIFT_INCLUDE_PATHS' => '$(PODS_ROOT)/GZ-NMSSH/NMSSH-iOS/libssh2',
    "OTHER_LDFLAGS" => "-ObjC",
    'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
  }

end
