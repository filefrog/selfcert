filefrog/selfcert
=================

Generate a self-signed certificate, with minimal fuss.

    $ docker run --rm -v $PWD:/certs filefrog/selfcert

Generates a `tls.key` and `tls.crt` file, containing the private
key and public X.509 certificate, respectively.
