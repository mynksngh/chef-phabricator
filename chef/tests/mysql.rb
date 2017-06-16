describe package('MariaDB-server') do
  it { should be_installed }
  its('version') { should >= '10.2' }
  its('version') { should < '10.3' }
end

describe service('mysql') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
