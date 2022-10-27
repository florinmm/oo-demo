namespace: DemoFolder
flow:
  name: testRPA_flow
  workflow:
    - testRPA:
        do:
          DemoFolder.testRPA: []
        publish:
          - stock_value
          - stock_variance
          - error_message
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      testRPA:
        x: 100
        'y': 150
        navigate:
          17c3bde4-e121-1c36-019f-2c82efd7d5ad:
            targetId: 3f95eed9-0744-5715-6ae5-0d2e3d93aabe
            port: SUCCESS
          ee39a829-7205-e918-e8a2-a5c4c1f41395:
            targetId: 3f95eed9-0744-5715-6ae5-0d2e3d93aabe
            port: WARNING
    results:
      SUCCESS:
        3f95eed9-0744-5715-6ae5-0d2e3d93aabe:
          x: 400
          'y': 150
