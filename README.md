# Docker image with SABnzbd-with-TLS-1.3
SABnzbd with TLS 1.3, both client and server (Docker image)

## Build

Straight from github:
```
sudo docker build -t="sabnzbd-with-tls13"  https://github.com/sanderjo/SABnzbd-with-TLS-1.3.git

```
Or, after a "git clone":
```
sudo docker build --no-cache -t="sabnzbd-with-tls13" .
```

## Run
```
sudo docker run -p 8080:8080 --name sabnzbd sabnzbd-with-tls13
```
## Access

via http:// < IP-address > :8080/

After enabling HTTPS in SABnzbd, access via https:// < IP-address > :8080/

Note: the cert/key are self-signed, so Chrome and Firefox will complain about the connection to SABnzbd.
