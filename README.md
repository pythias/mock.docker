# mock.docker
mock server docker

## docker

## Syntax

[Mock.PHP](https://github.com/pythias/mock)

## API

[Mock.Server](https://github.com/pythias/mock.server)

### Create

```
POST http://mock.dev/mock/create
@title mock_title
@content mock_script 
```

```
curl -X POST -H "Content-Type: application/x-www-form-urlencoded" -d 'title=mock&content={"_MOCK_":[{"function": "redirect", "url": "http://sample.weibo.com?rid=@natural()&pid=@request('pid', '0')","ms": "@int(100, 500)"}]}' "http://mock.dev/mock/create"
```

### Mock

```
GET http://mock.dev/mock/[mock_id]?x=xxx
```

### List

```
GET http://mock.dev/mock/[page]/[count]
```

### Update

```
PUT http://mock.dev/mock/[mock_id]/update
@title mock_title
@content mock_script
```
