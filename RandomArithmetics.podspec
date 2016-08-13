Pod::Spec.new do |spec|
    spec.name = "RandomArithmetics"
    spec.version = "1.0.0"
    spec.summary = "A companion project for online tutorial"
    spec.description = "A companion project for an online tutorial which is demostrating how to create a single Swift Framework targeting multiple platform"
    spec.homepage = "https://github.com/popduke/RandomArithmatics"
    spec.license = { type: 'MIT', file: 'LICENSE.md' }
    spec.authors = { "Yonny Hao" => 'popduke@gmail.com' }

    spec.ios.deployment_target = '8.0'
    spec.osx.deployment_target = '10.10'
    spec.watchos.deployment_target = '2.0'
    spec.tvos.deployment_target = '9.0'

    spec.frameworks  = "Foundation"
    spec.source = { git: "https://github.com/popduke/RandomArithmetics.git", tag: spec.version.to_s }
    spec.source_files = 'Sources/*.{h,swift}'
end
