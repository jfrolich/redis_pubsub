# RedisPubsub

Test case for https://github.com/phoenixframework/phoenix_pubsub_redis/issues/31#issuecomment-334873843

use the following commands in `iex -S mix` to reproduce:

```
iex(1)> Phoenix.PubSub.subscribe(RedisPubsub.PubSub, "test")
:ok
iex(2)> Phoenix.PubSub.broadcast(RedisPubsub.PubSub, "test", "bla")
:ok
iex(3)> flush
:ok
```
