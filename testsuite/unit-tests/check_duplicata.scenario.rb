#! /usr/bin/ruby
# this run on travis
duplicata = `cat features/*.feature | grep Scenario | sort | uniq -cd`.strip
if duplicata.to_s.empty?
  log 'no duplicata great job'
  exit 0
else
  log '+++++++++++++++++++++++++++++++'
  log 'found duplicatas Scenario names!'
  log 'please remove them'
  log duplicata
  exit 1
end
