# This file is to make sure that the hostname gets inserted into /etc/host
# file.
line = "127.0.0.1 #{node['hostname']}"
file = Chef::Util::FileEdit.new("/etc/hosts")
file.insert_line_if_no_match(/#{line}/, line)
file.write_file
