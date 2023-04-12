Build

```
docker build -t cronitor .
```

Run

```
docker run -e MONITOR_KEY=123 -e API_KEY=456 -it --rm cronitor
```

Push

```
docker push mgoldsborough/cronitor:tagname
```