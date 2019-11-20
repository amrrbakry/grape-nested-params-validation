related: https://github.com/ruby-grape/grape/issues/1933

### Steps to reproduce:
- clone repo && cd
- run `$ bundle install && rake db:create`
- start server: `$ rails s`
- fire request: 
```
curl -X POST \
  'http://localhost:3000/base/sessions?registration[waiting_list_enabled]=true' \
  -H 'Cache-Control: no-cache' \
```

expected response:
```
{
    "error": "Total capacity must be present"
}
```

actual response:

```
{
    "error": "registration[total_capacity] must be present"
}
```
