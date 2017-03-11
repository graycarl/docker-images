# 个人 Wiki

# Compose Sample

```yaml
psnwiki:
    image: hhbcarl/psnwiki
    environment:
        REPO: git@github.com/somebody/somerepo.git
        URLPATH: /wiki
    volumes:
        - ~/.ssh/id_rsa:/root/.ssh/id_rsa:ro
        - ~/.gitconfig:/root/.gitconfig:ro
    ports:
        - 5000:5000
```
