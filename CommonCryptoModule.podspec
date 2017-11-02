Pod::Spec.new do |spec|
    spec.name = 'CommonCryptoModule'
    spec.version = '1.0'
    spec.homepage = 'https://github.com/nkukushkin/CommonCryptoModule'
    spec.authors = { 'Nikita Kukushkin' => 'nk-developer@ya.ru' }
    spec.summary = 'Module wrapper for CommonCrypto that is importable in Swift.'
    spec.source = {
        :git => 'git@github.com:nkukushkin/CommonCryptoModule.git',
        :tag => '1.0'
    }
    spec.pod_target_xcconfig = { 
    	'SWIFT_INCLUDE_PATHS' => '$(SRCROOT)/CommonCryptoModule/CommonCryptoModule/CommonCryptoBridge' 
    }
    spec.source_files = 'CommonCryptoModule/*.{h,swift}'
    spec.resources = 'CommonCryptoModule/CommonCryptoBridge/*.{h,modulemap}'
    spec.ios.deployment_target = '9.0'
end