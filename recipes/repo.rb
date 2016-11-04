case node['platform_family']
when 'debian'
  apt_repository 'node.js' do
    uri node['nodejs']['repo']
    distribution node['lsb']['codename']
    components ['main']
    keyserver node['nodejs']['keyserver']
    key node['nodejs']['key']
  end
when 'rhel'
  include_recipe 'yum-epel'
end
