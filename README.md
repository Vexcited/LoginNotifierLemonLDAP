# Login Notifier for LemonLDAP

Login Notifier is a plugin for LemonLDAP that sends a notification (through any configured way) when a user logs in for the first time from a new device.

> Currently a work in progress.

## Notification Providers

- [ ] LemonLDAP Notification
- [ ] Discord Webhook
- [ ] Email

## Installation

[`LoginNotifier.pm`](/src/LoginNotifier.pm) file should be located at `Lemonldap/NG/Portal/Plugins/LoginNotifier.pm`.

## Configuration

WIP

## Development

You can spin up a development environment using the provided `docker-compose.yml` file.

```bash
docker-compose up
```

After configuring your hosts file to point `auth.example.com manager.example.com reload.example.com test1.example.com test2.example.com` to `127.0.0.1`, you can access the authentication portal at `http://auth.example.com`.

| Login  | Password | Role          |
| ------ | -------- | ------------- |
| rtyler | rtyler   | user          |
| msmith | msmith   | user          |
| dwho   | dwho     | administrator |

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
