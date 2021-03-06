REDIS_URL = URI.parse(ENV['REDISTOGO_URL'] || 'redis://localhost:6379/')
REDIS = Redis.new(host: REDIS_URL.host, port: REDIS_URL.port, password: REDIS_URL.password)

# clean stale players on restart. The websocket connections are gone anyway.
REDIS.del :players
