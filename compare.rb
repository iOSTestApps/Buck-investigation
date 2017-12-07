#!/usr/bin/env ruby

require 'xcodeproj'
require 'pp'

@buck_project = Xcodeproj::Project.open('buck-sample-app/ios/ios.xcodeproj')
@xcode_project = Xcodeproj::Project.open('BuddybuildSampleApp/BuddybuildSampleApp.xcodeproj')

@main_buck_target = @buck_project.targets.select { |t| t.name == "BuddybuildSampleApp" }.first
@main_xcode_target = @xcode_project.targets.select { |t| t.name == "BuddybuildSampleApp" }.first


pp @main_buck_target.pretty_print
puts ""
puts "--------------------------"
puts ""
pp @main_xcode_target.pretty_print
