# REvent

REvent is a server application to let raid participant register and pay online.

## How to run

You must first install a [rvm|http://rvm.io] environment and install ruby 2.3 at least. After run `bundle install`, check
if you have no errors.

Edit the `config/database.yml` file to correspond to your database settings.

Execute `rake RAILS_ENV=production db:setup` if it's the first time you run this app with database ; else execute `rake RAILS_ENV=production db:migrate`

Run `rails RAILS_ENV=production server` to run the app on port 3000. To run app in production, it's recommended to use passenger and unicorn.


## Licence

This application is under GNU GPL V3

```
&copy; 2016 Philippe VIENNE
&copy; 2016 Gabriel AUGENDRE
```