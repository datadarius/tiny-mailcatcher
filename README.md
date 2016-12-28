# tiny-mailcatcher
This is the Dockerfile for tiny-mailcatcher.
It's purpose is to provide a very small docker image for [https://rubygems.org/gems/mailcatcher/](mailcatcher)
It uses the gem installation on the official [https://hub.docker.com/r/library/ruby](ruby:2-alpine)

# port configuration
In case you need to change the default ports (1025 smtp, 1080 web),
please change the Dockerfile:

`CMD ["--ip", "0.0.0.0", "--smtp-port", "1025", "--http-port", "1080"]`

# Pull Requests
Pull Requests welcome.


