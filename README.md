This is my personal debian repository for packages that I locally built.

Install scriptlet:
```bash
apt install apt-transport-https
echo "deb https://klaernie.github.io/debian void main" >/etc/apt/sources.list.d/klaernie.list
wget -O - https://keybase.io/klaernie/pgp_keys.asc | apt-key add
apt update
```
