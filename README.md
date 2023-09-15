# docker-compose-wordpress



## Usage
get your WordPress installation added in (or create a new blank one).

Bringing up the Docker Compose network with `site` instead of just using `up`, ensures that only our site's containers are brought up at the start, instead of all of the command containers as well. The following are built for our web server, with their exposed ports detailed:

- **nginx** - `:80`
- **mysql** - `:3306`
- **php** - `:9000`

An additional container is included that lets you use the wp-cli app without having to install it on your local machine. Use the following command examples from your project root, modifying them to fit your particular use case.

- `docker-compose run --rm wp user list`

## Persistent MySQL Storage

By default, whenever you bring down the Docker network, your MySQL data will be removed after the containers are destroyed. If you would like to have persistent data that remains after bringing containers down and back up, do the following:

1. Create a `mysql` folder in the project root, alongside the `nginx` and `src` folders.
2. Under the mysql service in your `docker-compose.yml` file, add the following lines:

```
volumes:
  - ./mysql:/var/lib/mysql
```
docker-compose up >> compose file
docker-compose up -d --build >> php.dockerfile
docker-compose up -d --build >> docker-compose
docker-compose run --rm wp user list >>compose it's same as wp user list directoly in contaianer
to install plugins in container-
docker-compose run -rm wp plugin install wordpress-seo
docker-compose run -rm wp plugin activate wordpress-seo
docker-compose -d up


site title: projectdeployed
username: wp
password: secret