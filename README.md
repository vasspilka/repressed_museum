Repressed museum is a mock site for an exhibition help in may 2016 in Athens, the site can be seen live at http://emaa.gr

## Technical

Website made in ruby's Hanami web framework, to run locally

```bash
$ git clone https://github.com/vasspilka/repressed_museum.git
$ cd repressed_museum
$ bundle install
$ bundle exec hanami db migrate
$ bundle exec hanami serve
```

Alternatively can be run through docker with `docker-compose`

```bash
$ git clone https://github.com/vasspilka/repressed_museum.git
$ cd repressed_museum
$ docker-compose build
$ docker-compose up
```

