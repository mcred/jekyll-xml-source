# Jekyll XML Source Plugin

Jekyll XML Source is a plugin that will download XML from external sites and makes the data available when generating a site. It also works for RSS feeds. Once downloaded it is converted to JSON.

## Installation
From the root of your Jekyll project, if there isn't a plugins directory, create one:

```bash
mkdir _plugins
```

Setup the plugins directory by adding the following to the `_config.yml`:

```
plugins_dir: ./_plugins
```


Then download load `jekyll_xml_source.rb` to the plugin directory:

```bash
curl -o ./_plugins/jekyll_xml_source.rb https://raw.githubusercontent.com/mcred/jekyll-xml-source/master/jekyll_xml_source.rb
```

Add the following dependencies to the Gemfile:

```
gem "json"
gem "activesupport"
```

## Example
Add the following to `_config.yml`:

```
jekyll_xml:
  - data: nasa
    source: https://www.nasa.gov/rss/dyn/solar_system.rss
    cache: true
```

Add the following to `index.html` or any other frontend file:

```
{% assign nasa = site.data.nasa.rss.channel.item | sort: 'title' %}
{% for item in nasa %}
  {{item.title}} <br />
{% endfor %}
```

## Documentation
* `jekyll_xml` is the root collection for the plugin. Each of the following items in the collection have 3 parameters.
* `data` is an arbitrary name that is used to save the results to `site.data`. If you were to use `data: nasa` the resulting fetched data will be available in `site.data.nasa`.
* `source` is the URL from which the data should be fetched.
* `cache` is an optional parameter. If `true`, it will save the results to `_data/*DATA*.json`.

## Contribute

1.  Fork the project.
2.  Make your bug fix or new feature.
3.  Add tests for your code.
4.  Send a pull request.

Contributions must be signed as `User Name <user@email.com>`. Make sure to [set up Git with user name and email address](https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup). Bug fixes should branch from the current stable branch. New features should be based on the `master` branch.

## Contributor Code of Conduct

Please note that this project is released with a [Contributor Code of Conduct](code-of-conduct.md). By participating in this project you agree to abide by its terms.

## Reporting Issues

Issues should be reported [here](https://github.com/mcred/jekyll-xml-source/issues).

## <a id="license"></a>License

This is code is licensed under the MIT License. Full license is available [here](./LICENSE).
