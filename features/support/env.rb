require "watir"
require "rspec"

yamlpath = './links.yml'
YAML_LINKS = YAML.load_file("#{yamlpath}")