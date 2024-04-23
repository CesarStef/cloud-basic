php occ maintenance:install --database "mysql" --database-name "nextcloud"  --database-user "nextcloud" --database-pass "nextcloud" --admin-user "admin" --admin-pass "password" --database-host "nc-db"
php occ app:install user_oidc
php occ user_oidc:provider "<your-idp>" --clientid="<client-id>" --clientsecret="<client-secret>" --discoveryuri="<your-idp-discrovery-uri-aka-wellknow-url>" --scope="openid email profile"
php occ user_oidc:provider
php occ config:app:set --value=0 user_oidc allow_multiple_user_backends
php occ config:app:set serverinfo token --value 6615eba1d7e581f040b72e7c966544254895d2b8a534dcecd292b5db899fb0c8 #this is needed for prometheus