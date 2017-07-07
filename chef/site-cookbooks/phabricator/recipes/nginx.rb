group 'phabricator' do
  action :create
  members 'nginx'
  append true
end

group 'nginx' do
  action :modify
  members 'phabricator'
  append true
end

nginx_site 'phabricator' do
  name 'phabricator'
  template 'nginx.conf'
end
