[![Docker Repository on Quay](https://quay.io/repository/datadarius/tiny-mailcatcher/status "Docker Repository on Quay")](https://quay.io/repository/datadarius/tiny-mailcatcher)

# tiny-mailcatcher
This is the Dockerfile for tiny-mailcatcher.
It's purpose is to provide a very small docker image for [mailcatcher](https://rubygems.org/gems/mailcatcher/)
It uses the gem installation on the official [ruby:2-alpine](https://hub.docker.com/r/library/ruby)

# size
Image is **35MB**.
Extracted docker image is **87MB**.

# registry
`docker pull quay.io/datadarius/tiny-mailcatcher`

# port configuration
In case you need to change the default ports (1025 smtp, 1080 web),
please edit the Dockerfile:

`CMD ["--ip", "0.0.0.0", "--smtp-port", "1025", "--http-port", "1080"]`

# timezone
Europe/Berlin

# pull requests
Pull Requests welcome.