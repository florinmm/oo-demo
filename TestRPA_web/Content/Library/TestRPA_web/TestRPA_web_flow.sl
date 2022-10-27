namespace: TestRPA_web
flow:
  name: TestRPA_web_flow
  workflow:
    - get_cell:
        do:
          io.cloudslang.base.excel.get_cell:
            - excel_file_name: "C:\\test.xls"
        publish:
          - return_result
        navigate:
          - SUCCESS: TestRPA_web
          - FAILURE: on_failure
    - TestRPA_web:
        robot_group: group_web
        do:
          TestRPA_web.TestRPA_web: []
        publish:
          - stock_value
          - stock_variation
          - return_result
          - error_message
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  outputs:
    - stock_value
    - stock_variation
    - return_result
    - error_message
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      get_cell:
        x: 100
        'y': 150
      TestRPA_web:
        x: 400
        'y': 150
        navigate:
          6c7027fa-1224-ca9d-a202-5549320fb036:
            targetId: fb5e8d9e-da6e-b632-97c4-9ba87d8001f1
            port: SUCCESS
          19e2d2a4-68e5-20bc-745b-17294b99889d:
            targetId: fb5e8d9e-da6e-b632-97c4-9ba87d8001f1
            port: WARNING
    results:
      SUCCESS:
        fb5e8d9e-da6e-b632-97c4-9ba87d8001f1:
          x: 700
          'y': 150
