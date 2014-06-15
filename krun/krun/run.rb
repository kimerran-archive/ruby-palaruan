require 'json'
require 'win32ole'
# it's ugly down there
WIN32OLE.new('Shell.Application').ShellExecute(JSON.parse(File.read("#{ARGV[1]}\\krun\\apps"))[ARGV[0]])
