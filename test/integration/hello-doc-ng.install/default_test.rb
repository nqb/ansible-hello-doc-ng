# # encoding: utf-8

# test installation of hello-doc-ng
describe package('hello-doc-ng') do
  it { should be_installed }
  its('version') { should match /1.8/ }
end

# test apache is running
describe http('http://localhost/README.html') do
  its('status') { should cmp 200 }
end

# test content in HTML page
describe http('http://localhost/README.html') do
  its('body') { should match /Zayme/ }
end
