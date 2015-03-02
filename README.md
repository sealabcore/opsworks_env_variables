# opsworks_env_variables-cookbook

Use this cookbook to set environment variables in your Rails app deployed on Opsworks. This cookbook creates an application.yml file for use with Figaro. The figaro gem https://github.com/laserlemon/figaro will load this application.yml into your Rails app making your env variables set in AWS Opsworks accessible to your application. See the figaro gem read me for more in depth usage.

## Supported Platforms

AWS Opsworks.

## Usage

### opsworks_env_variables::default

* Add Figaro to your Rails application.
* Include this cookbook in your berksfile.
* Update your custom chef.
* Add opsworks_env_variables::default to your rails app layer as a deploy step.
* Deploy
* Your app will now have access to the environment variables you set in your Opsworks application settings.

```

## Contributing

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors

Author:: Mike Taylor (mike@kitcrm.com)
