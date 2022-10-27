namespace: TestSCM2
flow:
  name: anotherFlow
  workflow:
    - do_nothing:
        do:
          io.cloudslang.base.utils.do_nothing: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      do_nothing:
        x: 100
        'y': 150
        navigate:
          ad9f01f9-ab80-6dc4-ed3e-0d378cd48d1e:
            targetId: f43a5813-9762-0a37-6471-bcd790b7cbd7
            port: SUCCESS
    results:
      SUCCESS:
        f43a5813-9762-0a37-6471-bcd790b7cbd7:
          x: 400
          'y': 150
