namespace: TestSCM
flow:
  name: blabla2
  workflow:
    - blabla:
        do:
          TestSCM.blabla: []
        navigate:
          - SUCCESS: SUCCESS
  results:
    - SUCCESS
extensions:
  graph:
    steps:
      blabla:
        x: 100
        'y': 150
        navigate:
          7b4c6a4e-260c-5980-1be1-45064b3139dd:
            targetId: 41cdb074-4641-c150-40b8-e1af7fdafb81
            port: SUCCESS
    results:
      SUCCESS:
        41cdb074-4641-c150-40b8-e1af7fdafb81:
          x: 400
          'y': 150
