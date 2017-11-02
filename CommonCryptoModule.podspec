Pod::Spec.new do |spec|
    spec.name = 'CommonCryptoModule'
    spec.version = '0.1'
    spec.homepage = 'https://github.com/nkukushkin/CommonCryptoModule'
    spec.authors = { 'Nikita Kukushkin' => 'nk-developer@ya.ru' }
    spec.summary = 'Module wrapper for CommonCrypto that is importable in Swift.'
    spec.source = {
        :git => 'git@github.com:nkukushkin/CommonCryptoModule.git'
    }
    spec.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(TARGET_DIR)/CommonCryptoBridge' }
    spec.source_files = 'CommonCryptoModule/*.h', 'CommonCryptoModule/*.swift', 'CommonCryptoModule/CommonCryptoBridge/*.h', 'CommonCryptoModule/CommonCryptoBridge/*.modulemap'
end