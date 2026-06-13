# Shodan Reconnaissance Report: holbertonschool.com

## IP Ranges

| IP Address | Subdomain | Organization | Location |
|------------|-----------|--------------|----------|
| 51.44.28.84 | apply.holbertonschool.com | A100 ROW Inc | France, Paris |
| 52.47.143.83 | yriry2.holbertonschool.com | Amazon Data Services France | France, Paris |
| 35.180.145.93 | apply.holbertonschool.com | Amazon Data Services France | France, Paris |
| 35.181.141.244 | read.holbertonschool.com | Amazon Data Services France | France, Paris |
| 35.181.209.82 | apply.holbertonschool.com | Amazon Data Services France | France, Paris |
| 13.37.205.47 | apply.holbertonschool.com | Amazon Data Services France | France, Paris |
| 51.45.18.159 | apply.holbertonschool.com | A100 ROW Inc | France, Paris |

## Technologies & Frameworks

| Subdomain | Web Server | SSL Issuer | Frameworks |
|-----------|------------|------------|------------|
| apply.holbertonschool.com | nginx/1.20.0 | Amazon RSA 2048 M02 | Ruby on Rails (X-Frame-Options, X-XSS-Protection headers) |
| yriry2.holbertonschool.com | nginx | Let's Encrypt (YE1) | Discourse Forum |
| read.holbertonschool.com | nginx/1.20.0 | Amazon RSA 2048 M04 | Ruby on Rails |

## Summary

- **Hosting**: Primarily AWS (Amazon Data Services France, eu-west-3 region)
- **Web Server**: nginx (versions 1.20.0 and latest)
- **SSL Certificates**: Amazon RSA 2048 and Let's Encrypt
- **Supported TLS**: TLSv1.2 on most, TLSv1.2 + TLSv1.3 on yriry2
- **Security Headers**: X-Frame-Options, X-XSS-Protection, X-Content-Type-Options, X-Download-Options present on all subdomains
- **IP Range**: Primarily within AWS eu-west-3 (Paris) — 13.37.0.0/16, 35.180.0.0/16, 35.181.0.0/16, 51.44.0.0/16, 51.45.0.0/16, 52.47.0.0/16
