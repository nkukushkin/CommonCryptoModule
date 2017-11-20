Pod::Spec.new do |spec|
    spec.name = 'CommonCryptoModule'
    spec.summary = 'Module wrapper for CommonCrypto that is importable in Swift.'
    spec.license = 'MIT'

    spec.version = '1.0.2'
    spec.source = {
        :git => 'https://github.com/nkukushkin/CommonCryptoModule.git',
        :tag => spec.version
    }

	spec.authors = { 'Nikita Kukushkin' => 'nk-developer@ya.ru' } 
    spec.homepage = 'https://github.com/nkukushkin/CommonCryptoModule'
    spec.social_media_url = 'http://twitter.com/nkukushkin'

    spec.osx.deployment_target = '10.11'
    spec.ios.deployment_target = '9.0'
  	spec.osx.deployment_target = '10.9'
  	spec.tvos.deployment_target = '9.0'
  	spec.watchos.deployment_target = '4.0'

    spec.pod_target_xcconfig = { 
    	'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/CommonCryptoModule/CommonCryptoModule/CommonCryptoBridge' 
    }
    spec.source_files = 'CommonCryptoModule/*.{h,swift}'
    spec.resources = 'CommonCryptoModule/CommonCryptoBridge/*.{h,modulemap}'
end
