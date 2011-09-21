node[:ubuntu_python_packages].each do |pkg|
    package pkg do
        :upgrade
    end
end

node[:pip_python_packages].each_pair do |pkg, version|
    execute "install-#{pkg}" do
        command "pip install #{pkg}==#{version}"
    end
end

