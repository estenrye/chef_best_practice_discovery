# copyright: 2020, Esten Rye

temp_directory =  case os.family
                  when 'windows'
                    'C:/Temp'
                  else
                    '/tmp'
                  end

control 'sandbox-1.0' do                         # A unique ID for this control
  impact 0.8                                     # The criticality, if this control fails.
  title "Check for #{temp_directory} directory"  # A human-readable title
  desc 'Ensure a temp directory is properly configured.'

  describe file(temp_directory) do                  # The actual test
    it { should exist }
    it { should be_directory }
  end
end

control 'sandbox-1.1' do
  impact 0.8
  title 'Check for sandbox'
  desc 'Ensure sandbox is properly configured.'

  describe file("#{temp_directory}/chef_welcome.txt") do
    it { should exist }
    it { should be_file }
    its('content') { should match 'Welcome aboard, have fun using Chef!' }
  end
end
