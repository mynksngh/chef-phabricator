describe package('git') do
  it { should be_installed }
end

describe package('ntp') do
  it { should be_installed }
end
