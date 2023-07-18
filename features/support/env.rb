require 'rspec'
require 'httparty'
require 'pry'
require "json_matchers/rspec"

AMBIENTE = ENV['AMBIENTE']

PATH_PAYLOADS = File.dirname(__FILE__) + "/payloads/"
PATH_CONFIG = File.dirname(__FILE__) + "/config/"

URL = YAML.load_file(File.dirname(__FILE__) + '/config/url.yml')
ENDPOINT = YAML.load_file(File.dirname(__FILE__) + '/config/endpoint.yml')

Dir[File.join(File.dirname(__FILE__), 'spec_helper/*.rb')].each { |file| require file }

World(INSTANCIAS)