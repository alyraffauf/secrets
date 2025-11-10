let
  hosts = [
    "snowpoint"
    "celestic"
    "fallarbor"
    "fortree"
    "oreburgh"
    "jubilife"
    "eterna"
    "solaceon"
    "pacifidlog"
    "petalburg"
    "roxanne"
    "rustboro"
    "slateport"
    "sootopolis"
    "verdanturf"
  ];
  users = [
    "aly_fallarbor"
    "aly_fortree"
    "aly_kyogre"
    "aly_oreburgh"
    "aly_jubilife"
    "aly_eterna"
    "aly_pacifidlog"
    "aly_petalburg"
    "aly_roxanne"
    "aly_rustboro"
    "aly_slateport"
    "aly_sootopolis"
    "aly_verdanturf"
  ];
  systemKeys = builtins.map (host: builtins.readFile ./publicKeys/root_${host}.pub) hosts;
  userKeys = builtins.map (user: builtins.readFile ./publicKeys/${user}.pub) users;
  keys = systemKeys ++ userKeys;
in {
  "act-runner.age".publicKeys = keys;
  "aly/aws.age".publicKeys = userKeys;
  "aly/halloy.age".publicKeys = userKeys;
  "aly/mail/gmail.age".publicKeys = userKeys;
  "aly/mail/fastmail.age".publicKeys = userKeys;
  "aly/rclone/icloud.age".publicKeys = userKeys;
  "aly/syncthing/fallarbor/cert.age".publicKeys = keys;
  "aly/syncthing/fortree/key.age".publicKeys = keys;
  "aly/syncthing/fortree/cert.age".publicKeys = keys;
  "aly/syncthing/fallarbor/key.age".publicKeys = keys;
  "aly/syncthing/oreburgh/cert.age".publicKeys = keys;
  "aly/syncthing/oreburgh/key.age".publicKeys = keys;
  "aly/syncthing/jubilife/cert.age".publicKeys = keys;
  "aly/syncthing/jubilife/key.age".publicKeys = keys;
  "aly/syncthing/eterna/cert.age".publicKeys = keys;
  "aly/syncthing/eterna/key.age".publicKeys = keys;
  "aly/syncthing/pacifidlog/cert.age".publicKeys = keys;
  "aly/syncthing/pacifidlog/key.age".publicKeys = keys;
  "aly/syncthing/petalburg/cert.age".publicKeys = keys;
  "aly/syncthing/petalburg/key.age".publicKeys = keys;
  "aly/syncthing/rustboro/cert.age".publicKeys = keys;
  "aly/syncthing/rustboro/key.age".publicKeys = keys;
  "aly/syncthing/slateport/cert.age".publicKeys = keys;
  "aly/syncthing/slateport/key.age".publicKeys = keys;
  "aly/syncthing/sootopolis/cert.age".publicKeys = keys;
  "aly/syncthing/sootopolis/key.age".publicKeys = keys;
  "arr/bazarrApiKey.age".publicKeys = keys;
  "arr/lidarrApiKey.age".publicKeys = keys;
  "arr/prowlarrApiKey.age".publicKeys = keys;
  "arr/radarrApiKey.age".publicKeys = keys;
  "arr/sonarrApiKey.age".publicKeys = keys;
  "b2/account.age".publicKeys = keys;
  "b2/key.age".publicKeys = keys;
  "cloudflare.age".publicKeys = keys;
  "forgejo/b2Id.age".publicKeys = keys;
  "forgejo/b2Key.age".publicKeys = keys;
  "forgejo/from.age".publicKeys = keys;
  "forgejo/passwd.age".publicKeys = keys;
  "forgejo/protocol.age".publicKeys = keys;
  "forgejo/smtp_addr.age".publicKeys = keys;
  "forgejo/user.age".publicKeys = keys;
  "k3s.age".publicKeys = keys;
  "karakeep.age".publicKeys = keys;
  "lastfm/api.age".publicKeys = keys;
  "lastfm/secret.age".publicKeys = keys;
  "postgresql/forgejo.age".publicKeys = keys;
  "pds.age".publicKeys = keys;
  "rclone/b2.age".publicKeys = keys;
  "restic-password.age".publicKeys = keys;
  "slskd.age".publicKeys = keys;
  "spotify/client-id.age".publicKeys = keys;
  "spotify/client-secret.age".publicKeys = keys;
  "tailscale/auth.age".publicKeys = keys;
  "tailscale/caddyAuth.age".publicKeys = keys;
  "vaultwarden.age".publicKeys = keys;
  "wifi.age".publicKeys = keys;
}
