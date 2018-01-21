require 'bundler'
Bundler.require

require File.expand_path('../config/environment',  __FILE__)
# $LOAD_PATH.unshift(File.expand_path("app", __dir__))
# require 'controllers/robot_world_app'

run RobotWorldApp
