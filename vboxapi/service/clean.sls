# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import vboxapi with context %}

vboxapi-service-clean-service-dead:
  service.dead:
    - name: {{ vboxapi.service.name }}
    - enable: False
