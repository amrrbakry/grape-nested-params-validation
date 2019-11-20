### Steps to reproduce:
- clone repo && cd
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
