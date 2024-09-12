# generate base64 encoded values like this

# echo -n 'your-password' | base64
# echo -n '5432' | base64


```apiVersion: v1
kind: Secret
metadata:
  name: todopy
type: Opaque
data:
  password: eW91ci1wYXNzd29yZA==
  db-port: NTQzMg==
