describe yum.repo('nginx') do
  it { should exist }
  it { should be_enabled }
end

describe package('nginx') do
  it { should be_installed }
  its('version') { should >= '1.12.0' }
end

describe service('nginx') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
  its('protocols') {should include 'tcp'}
end
