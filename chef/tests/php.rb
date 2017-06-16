describe package('php71u-cli') do
  it { should be_installed }
  its('version') { should >= '7.1.0' }
  its('version') { should < '7.2.0' }
end

describe package('php71u-fpm') do
  it { should be_installed }
end

describe service('php-fpm') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
