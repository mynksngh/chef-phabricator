group 'phabricator' do
  action :modify
  members 'nginx'
  append true
end

group 'nginx' do
  action :modify
  members 'phabricator'
  append true
end

deploy "phabricator" do
  deploy_to '/srv/phabricator'
  repo 'https://github.com/gsdevme/phabricator-source.git'
  revision 'master'
  action :deploy

  rollback_on_error true

  migration_command 'make build && make migrate'
  migrate true

  symlink_before_migrate ({})
  create_dirs_before_symlink []
  purge_before_symlink []
  symlinks ({})

  user 'phabricator'
  group 'phabricator'
end
