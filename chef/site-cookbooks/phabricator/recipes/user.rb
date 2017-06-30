# This will be our main user for the application
user 'create phabricator user' do
  username 'phabricator'
  shell '/sbin/nologin'
  home '/srv/phabricator'
end
