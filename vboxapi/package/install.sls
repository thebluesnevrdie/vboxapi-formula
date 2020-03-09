# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import vboxapi with context %}

vboxapi-package-install-pkg-installed:
  pkg.installed:
    - name: {{ vboxapi.pkg.name }}
