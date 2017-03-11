# Runit

use runit instead of supervisord.

## Usage

create boot script for service `sva` and `svb`:

```bash
cat > sva-boot.sh << END
#!/bin/bash
exec 2>&1
source /etc/envvars
exec sva --port=$PORT
END

cat > svb-boot.sh << END
#!/bin/bash
exec 2>&1
source /etc/envvars
exec svb --db=$DB_URL
END
```

build a new images with Dockerfile:

```Dockerfile
FROM hhbcarl/runit
MAINTAINER Hongbo He <graycarl@qq.com>

# here some step to install sva and svb
# ...

ADD sva-boot.sh /etc/service/sva/run
ADD svb-boot.sh /etc/service/svb/run

ENTRYPOINT ["/usr/sbin/runit-starter"]
```

build it. The container will sva and svb at the same time when it started.
