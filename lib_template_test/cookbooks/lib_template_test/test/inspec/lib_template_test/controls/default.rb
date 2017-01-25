# encoding: utf-8
# copyright: 2015, The Authors
# license: All rights reserved

title 'template test'

control 'test-template-1.0' do       # A unique ID for this control
  impact 1.0                         # The criticality, if this control fails.
  title 'Create test file'           # A human-readable title
  desc 'Create the file /opt/template_test/lib.txt'
  describe file('/opt/template_test/lib.txt') do  # The actual test
    it { should exist }
    its('content') { should match 'val1 = lib value 1' }
  end
end
