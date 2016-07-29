# Mock.Docker
Mock server docker

## Docker

```
docker pull pythias/mock.server
docker create --name mock.server -it -p 80:80 pythias/mock.server
docker start mock.server
```

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
