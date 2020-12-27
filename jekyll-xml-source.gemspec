Gem::Specification.new do |s|
    s.name        = 'jekyll-xml-source'
    s.version     = '0.1.0'
    s.date        = '2018-07-07'
    s.summary     = "A plugin that will download XML from external sites."
    s.description = "Jekyll XML Source is a plugin that will download XML from external sites and makes the data available when generating a site. It also works for RSS feeds. Once downloaded it is converted to JSON."
    s.authors     = ["Derek Smart"]
    s.email       = 'derek@grindaga.com'
    s.files       = ["jekyll_xml_source.rb"]
    s.homepage    = 'https://github.com/mcred/jekyll-xml-source/'
    s.license       = 'MIT'
    s.add_runtime_dependency 'json'
    s.add_runtime_dependency 'activesupport'
  end