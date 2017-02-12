# Docker + Nightmare.js example

  Example repo for demonstrating how to run *e2e* tests with Docker and [Nightmare.js](http://www.nightmarejs.org/)

# Up and Running

  First you need to build the docker image

  ```
  docker build -t docker-nightmare-example .
  ```

  Then you run the test command in the container using [xvfb](https://www.x.org/releases/X11R7.6/doc/man/man1/Xvfb.1.xhtml)

  ```
  docker run -it docker-nightmare-example
  ```
