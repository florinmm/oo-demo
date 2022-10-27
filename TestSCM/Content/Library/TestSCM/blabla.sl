namespace: TestSCM
flow:
  name: blabla
  workflow:
    - uuid_generator:
        do:
          io.cloudslang.base.utils.uuid_generator: []
        publish:
          - new_uuid
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      uuid_generator:
        x: 100
        'y': 150
        navigate:
          c556a3fe-7460-343a-cda2-6530a11a5e1a:
            targetId: e5be02c6-efdd-db35-bf05-89b91829937a
            port: SUCCESS
    results:
      SUCCESS:
        e5be02c6-efdd-db35-bf05-89b91829937a:
          x: 400
          'y': 150
