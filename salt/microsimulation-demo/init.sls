microsimulation-demo-repository:
    builder.git_latest:
        - name: git@github.com:microsimulation/demo.git
        - identity: {{ pillar.elife.projects_builder.key or '' }}
        - rev: {{ salt['elife.rev']() }}
        - branch: {{ salt['elife.branch']() }}
        - target: /srv/microsimulation-demo/
        - force_fetch: True
        - force_checkout: True
        - force_reset: True

    cmd.run:
        - name: chown -R {{ pillar.elife.deploy_user.username }}:{{ pillar.elife.deploy_user.username }} .
        - cwd: /srv/microsimulation-demo
        - require:
            - builder: microsimulation-demo-repository

microsimulation-demo-configuration:
    file.managed:
        - name: /srv/microsimulation-demo/.env
        - source: salt://microsimulation-demo/config/srv-microsimulation-demo-.env
        - user: {{ pillar.elife.deploy_user.username }}
        - group: {{ pillar.elife.deploy_user.username }}
        - template: jinja
        - require:
            - microsimulation-demo-repository

microsimulation-demo-docker-compose-build:
    cmd.run:
        - name: docker-compose -f docker-compose.yml build
        - cwd: /srv/microsimulation-demo
        - user: {{ pillar.elife.deploy_user.username }}
        - require:
            - microsimulation-demo-configuration

microsimulation-demo-docker-compose-up:
    cmd.run:
        - name: docker-compose -f docker-compose.yml up -d --force-recreate
        - cwd: /srv/microsimulation-demo
        - user: {{ pillar.elife.deploy_user.username }}
        - require:
            - microsimulation-demo-docker-compose-build

microsimulation-demo-nginx-vhost:
    file.managed:
        - name: /etc/nginx/sites-enabled/microsimulation-demo.conf
        - source: salt://microsimulation-demo/config/etc-nginx-sites-enabled-microsimulation-demo.conf
        - template: jinja
        - require:
            - nginx-config
            - microsimulation-demo-docker-compose-up
        - listen_in:
            - service: nginx-server-service

microsimulation-demo-smoke-tests:
    file.managed:
        - name: /srv/microsimulation-demo/smoke_tests.sh
        - source: salt://microsimulation-demo/config/srv-microsimulation-demo-smoke_tests.sh
        - mode: 755
        - require:
            - microsimulation-demo-repository
