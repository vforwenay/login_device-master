# LoginDevice
This Gem is collect user's login records

## Usage
Must required Devise gem

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'login_device'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install login_device
```

Run Following command to copy Engine migrations
`rails login_device:install:migrations`
and run `rails db:migrate`

Add Following lines in `config/routs.rb` file
`mount LoginDevice::Engine => "/login_device"`

Copy following lines in coinfig/initializers/devise.rb
```
  include LoginDevice::LoginRecordsHelper
  Warden::Manager.after_authentication do |user, auth, opts|
    LoginDevice::LoginRecordsHelper.check_device(user,auth.cookies, auth.request)
  end

  Warden::Manager.after_set_user do |user, auth, opts|
    LoginDevice::LoginRecordsHelper.check_device(user,auth.cookies, auth.request)
  end

  Warden::Manager.before_logout do |user, auth, opts|
    LoginDevice::LoginRecordsHelper.remove_record(user,auth.cookies, auth.request)
  end
  ```
To check the login devices of logged in user
`/login_device`

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
