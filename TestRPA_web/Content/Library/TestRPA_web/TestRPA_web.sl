namespace: TestRPA_web
operation:
  name: TestRPA_web
  inputs:
  - stock_symbol: mfgp
  sequential_action:
    gav: com.microfocus.seq:TestRPA_web.TestRPA_web:1.0.0
    skills:
    - Java
    - SAP NWBC Desktop
    - SAP
    - SAPUI5
    - SAPWebExt
    - Terminal Emulators
    - UI Automation
    - Web
    - WPF
    settings:
      sap:
        active: false
        auto_log_on: false
        close_on_exit: false
        ignore_existing_sessions: false
        remember_password: false
      windows:
        active: false
      terminal_settings:
        active: false
      web:
        active: true
        address: https://www.google.com
        browser: CHROME
        close_on_exit: false
    steps:
    - step:
        id: '1'
        object_path: Browser("Google").Page("Google").WebEdit("Search")
        action: Set
        args: ${stock_symbol + ' stock'}
        snapshot: .\Snapshots\ssf1.html
        highlight_id: '10000000'
    - step:
        id: '2'
        object_path: Browser("Google").Page("Google").WebButton("Google Search")
        action: Click
        snapshot: .\Snapshots\ssf2.html
        highlight_id: '10000000'
    - step:
        id: '3'
        object_path: Browser("Google").Page("mfgp stock - Google Search").WebElement("5.94")
        action: Output
        args: CheckPoint("stock_value")
    - step:
        id: '4'
        object_path: Browser("Google").Page("mfgp stock - Google Search").WebElement("−0.060")
        action: Output
        args: CheckPoint("stock_variation")
    - step:
        id: '5'
        object_path: Browser("Google").Page("mfgp stock - Google Search").WebElement("(1.00%)")
        action: Output
        args: CheckPoint("variation_percentage")
        snapshot: .\Snapshots\ssf1.html
        highlight_id: '10000000'
  outputs:
  - stock_value:
      robot: true
      value: ${stock_value}
  - stock_variation:
      robot: true
      value: ${stock_variation}
  - variation_percentage:
      robot: true
      value: ${variation_percentage}
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
object_repository:
  objects:
  - object:
      class: Browser
      name: Google
      properties:
      - property:
          value:
            value: Google
            regular_expression: false
          name: title
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: https://www.google.com
            regular_expression: false
          name: openurl
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: Google
            regular_expression: false
          name: opentitle
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: '-1'
            regular_expression: false
          name: openedbytestingtool
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '1'
            regular_expression: false
          name: number of tabs
          hidden: true
          read_only: true
          type: NUMBER
      - property:
          value:
            value: Google
            regular_expression: false
          name: name
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: Browser
            regular_expression: false
          name: micclass
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: '1'
            regular_expression: false
          name: browserindex
          hidden: true
          read_only: true
          type: I2
      basic_identification:
        property_ref:
        - micclass
        ordinal_identifier:
          value: 3
          type: creationtime
      smart_identification:
        base_filter:
          property_ref:
          - micclass
        optional_filter:
          property_ref:
          - name
          - title
          - openurl
          - opentitle
          - openedbytestingtool
          - number of tabs
        algorithm: Mercury.TolerantPriority
        active: true
      custom_replay: ''
      comments: ''
      visual_relations: ''
      last_update_time: Wednesday, August 31, 2022 11:45:55 AM
      child_objects:
      - object:
          class: Page
          name: mfgp stock - Google Search
          properties:
          - property:
              value:
                value: ''
                regular_expression: false
              name: user-input in post data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: user input in get data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://www.google.com/search
                regular_expression: false
              name: url without form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://www.google.com/search?q=mfgp+stock&source=hp&ei=1kUPY9G8KM6e5NoPisiS-AM&iflsig=AJiK0e8AAAAAYw9T5lv8iN0_rvXERxWgcvWLJIf-UkHU&ved=0ahUKEwjR_5rb_PD5AhVOD1kFHQqkBD8Q4dUDCAk&uact=5&oq=mfgp+stock&gs_lcp=Cgdnd3Mtd2l6EAMyEAgAEIAEELEDEIMBEEYQ-gEyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBggAEB4QFjIGCAAQHhAWMgYIABAeEBY6DggAEI8BEOoCEIwDEOUCOg4ILhCPARDqAhCMAxDlAjoLCAAQgAQQsQMQgwE6CAgAEIAEELEDOhEILhCABBCxAxCDARDHARDRAzoICC4QsQMQgwE6DgguELEDEIMBEMcBENEDOgsILhCABBCxAxCDAToOCC4QgAQQsQMQgwEQ1AI6CwguEIAEEMcBEK8BOgUILhCABDoHCAAQgAQQClDGKli-RWDdVGgBcAB4AIABN4gB-gKSAQIxMJgBAKABAbABCg&sclient=gws-wiz
                regular_expression: false
              name: url
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: mfgp stock - Google Search
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: non user-input in post data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: non user-input in get data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Page
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '10003'
                regular_expression: false
              name: index
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: ''
                regular_expression: false
              name: form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: document size
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: all data in get method
              hidden: true
              read_only: true
              type: STRING
          basic_identification:
            property_ref:
            - micclass
            ordinal_identifier: ''
          smart_identification:
            base_filter:
              property_ref:
              - micclass
            optional_filter:
              property_ref:
              - title
              - url
            algorithm: Mercury.TolerantPriority
            active: true
          custom_replay: ''
          comments: ''
          visual_relations: ''
          last_update_time: Wednesday, August 31, 2022 11:45:55 AM
          child_objects:
          - object:
              class: WebElement
              name: −0.060
              properties:
              - property:
                  value:
                    value: '-1'
                    regular_expression: false
                  name: visible
                  hidden: true
                  read_only: true
                  type: BOOL
              - property:
                  value:
                    value: WebElement
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: −0.060
                    regular_expression: false
                  name: innertext
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: SPAN
                    regular_expression: false
                  name: html tag
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: html id
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: class
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: acc_name
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: //DIV[@id="knowledge-finance-wholepage__entity-summary"]/DIV[3]/G-CARD-SECTION[1]/DIV[1]/G-CARD-SECTION[1]/DIV[2]/DIV[1]/SPAN[2]/SPAN[1]
                    regular_expression: false
                  name: _xpath
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - micclass
                - html tag
                - _xpath
                ordinal_identifier: ''
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                  - html tag
                optional_filter:
                  property_ref:
                  - html id
                  - class
                  - innertext
                  - visible
                  - acc_name
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Wednesday, August 31, 2022 11:45:55 AM
              child_objects: []
          - object:
              class: WebElement
              name: '5.94'
              properties:
              - property:
                  value:
                    value: '-1'
                    regular_expression: false
                  name: visible
                  hidden: true
                  read_only: true
                  type: BOOL
              - property:
                  value:
                    value: WebElement
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '5.94'
                    regular_expression: false
                  name: innertext
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: SPAN
                    regular_expression: false
                  name: html tag
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: html id
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: IsqQVc NprOob wT3VGc
                    regular_expression: false
                  name: class
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: acc_name
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: //DIV[@id="knowledge-finance-wholepage__entity-summary"]/DIV[3]/G-CARD-SECTION[1]/DIV[1]/G-CARD-SECTION[1]/DIV[2]/DIV[1]/SPAN[1]/SPAN[1]/SPAN[1]
                    regular_expression: false
                  name: _xpath
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - micclass
                - html tag
                - _xpath
                ordinal_identifier: ''
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                  - html tag
                optional_filter:
                  property_ref:
                  - html id
                  - class
                  - innertext
                  - visible
                  - acc_name
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Wednesday, August 31, 2022 11:45:55 AM
              child_objects: []
          - object:
              class: WebElement
              name: (1.00%)
              properties:
              - property:
                  value:
                    value: '-1'
                    regular_expression: false
                  name: visible
                  hidden: true
                  read_only: true
                  type: BOOL
              - property:
                  value:
                    value: WebElement
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: (1.00%)
                    regular_expression: false
                  name: innertext
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: SPAN
                    regular_expression: false
                  name: html tag
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: html id
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: class
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: acc_name
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: //DIV[@id="knowledge-finance-wholepage__entity-summary"]/DIV[3]/G-CARD-SECTION[1]/DIV[1]/G-CARD-SECTION[1]/DIV[2]/DIV[1]/SPAN[2]/SPAN[2]/SPAN[1]
                    regular_expression: false
                  name: _xpath
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - micclass
                - innertext
                - html tag
                - class
                - _xpath
                ordinal_identifier: ''
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                  - html tag
                optional_filter:
                  property_ref:
                  - html id
                  - class
                  - innertext
                  - visible
                  - acc_name
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Wednesday, August 31, 2022 11:45:55 AM
              child_objects: []
      - object:
          class: Page
          name: Google
          properties:
          - property:
              value:
                value: ''
                regular_expression: false
              name: user-input in post data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: user input in get data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://www.google.com
                regular_expression: false
              name: url without form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://www.google.com
                regular_expression: false
              name: url
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Google
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: non user-input in post data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: non user-input in get data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Page
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '10003'
                regular_expression: false
              name: index
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: ''
                regular_expression: false
              name: form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: document size
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: all data in get method
              hidden: true
              read_only: true
              type: STRING
          basic_identification:
            property_ref:
            - micclass
            ordinal_identifier: ''
          smart_identification:
            base_filter:
              property_ref:
              - micclass
            optional_filter:
              property_ref:
              - title
              - url
            algorithm: Mercury.TolerantPriority
            active: true
          custom_replay: ''
          comments: ''
          visual_relations: ''
          last_update_time: Wednesday, August 31, 2022 11:45:55 AM
          child_objects:
          - object:
              class: WebEdit
              name: Search
              properties:
              - property:
                  value:
                    value: WebEdit
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: //DIV[3]/FORM[@role="search"][1]/DIV[1]/DIV[1]/DIV[1]/DIV[1]/DIV[2]/INPUT[@role="combobox"][1]
                    regular_expression: false
                  name: _xpath
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '434'
                    regular_expression: false
                  name: width
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: '339'
                    regular_expression: false
                  name: view_y
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: '703'
                    regular_expression: false
                  name: view_x
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: text
                    regular_expression: false
                  name: type
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '0'
                    regular_expression: false
                  name: rows
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: placeholder
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: q
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '2048'
                    regular_expression: false
                  name: max length
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: INPUT
                    regular_expression: false
                  name: html tag
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: html id
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '34'
                    regular_expression: false
                  name: height
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: default value
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: gLFyf gsfi
                    regular_expression: false
                  name: class
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: Search
                    regular_expression: false
                  name: acc_name
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '410'
                    regular_expression: false
                  name: abs_y
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: '703'
                    regular_expression: false
                  name: abs_x
                  hidden: true
                  read_only: true
                  type: NUMBER
              basic_identification:
                property_ref:
                - micclass
                - _xpath
                - type
                - name
                - html tag
                ordinal_identifier: ''
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                  - type
                  - html tag
                optional_filter:
                  property_ref:
                  - name
                  - html id
                  - max length
                  - default value
                  - class
                  - rows
                  - placeholder
                  - acc_name
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Wednesday, August 31, 2022 11:45:55 AM
              child_objects: []
          - object:
              class: WebButton
              name: Google Search
              properties:
              - property:
                  value:
                    value: WebButton
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: //DIV[3]/FORM[@role="search"][1]/DIV[1]/DIV[1]/DIV[2]/DIV[2]/DIV[5]/CENTER[1]/INPUT[@role="button"][1]
                    regular_expression: false
                  name: _xpath
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '0'
                    regular_expression: false
                  name: width
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: '0'
                    regular_expression: false
                  name: visible
                  hidden: true
                  read_only: true
                  type: BOOL
              - property:
                  value:
                    value: '0'
                    regular_expression: false
                  name: view_y
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: '0'
                    regular_expression: false
                  name: view_x
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: Google Search
                    regular_expression: false
                  name: value
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: submit
                    regular_expression: false
                  name: type
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: button
                    regular_expression: false
                  name: role
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: Google Search
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: INPUT
                    regular_expression: false
                  name: html tag
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: html id
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '0'
                    regular_expression: false
                  name: height
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: gNO89b
                    regular_expression: false
                  name: class
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: Google Search
                    regular_expression: false
                  name: acc_name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '71'
                    regular_expression: false
                  name: abs_y
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: '0'
                    regular_expression: false
                  name: abs_x
                  hidden: true
                  read_only: true
                  type: NUMBER
              basic_identification:
                property_ref:
                - micclass
                - _xpath
                - type
                - role
                - name
                - html tag
                - acc_name
                ordinal_identifier:
                  value: 0
                  type: index
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                  - html tag
                optional_filter:
                  property_ref:
                  - name
                  - type
                  - html id
                  - value
                  - class
                  - visible
                  - acc_name
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Wednesday, August 31, 2022 11:45:55 AM
              child_objects: []
  check_points_and_outputs:
  - check_point_and_output:
      standard_properties:
        standard_property:
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: testobjname
          flags: '3'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: testobjgentype
          flags: '3'
          inner_type: '0'
          type: STRING
        - value:
            value: Output Value
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: step_type
          flags: '88'
          inner_type: '8'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: parent
          flags: '9'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: objectid
          flags: '9'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: micclass
          flags: '3'
          inner_type: '0'
          type: STRING
        - value: ''
          visual_relations: ''
          parameter:
            value: '"variation_percentage"'
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
            type: Parameter
          name: innertext
          flags: '16696'
          inner_type: '8'
          type: STRING
        - value:
            value: SPAN
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: html tag
          flags: '18488'
          inner_type: '8'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: class name
          flags: '3'
          inner_type: '0'
          type: STRING
      settings: ''
      name: variation_percentage
      type: Output
      class: VerifyObj
  - check_point_and_output:
      standard_properties:
        standard_property:
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: testobjname
          flags: '3'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: testobjgentype
          flags: '3'
          inner_type: '0'
          type: STRING
        - value:
            value: Output Value
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: step_type
          flags: '88'
          inner_type: '8'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: parent
          flags: '9'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: objectid
          flags: '9'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: micclass
          flags: '3'
          inner_type: '0'
          type: STRING
        - value: ''
          visual_relations: ''
          parameter:
            value: '"stock_variation"'
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
            type: Parameter
          name: innertext
          flags: '312'
          inner_type: '8'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: class name
          flags: '3'
          inner_type: '0'
          type: STRING
      settings: ''
      name: stock_variation
      type: Output
      class: VerifyObj
  - check_point_and_output:
      standard_properties:
        standard_property:
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: testobjname
          flags: '3'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: testobjgentype
          flags: '3'
          inner_type: '0'
          type: STRING
        - value:
            value: Output Value
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: step_type
          flags: '88'
          inner_type: '8'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: parent
          flags: '9'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: objectid
          flags: '9'
          inner_type: '0'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: micclass
          flags: '3'
          inner_type: '0'
          type: STRING
        - value: ''
          visual_relations: ''
          parameter:
            value: '"stock_value"'
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
            type: Parameter
          name: innertext
          flags: '312'
          inner_type: '8'
          type: STRING
        - value:
            value: ''
            regular_expression: false
            ignore_space: false
            match_case: false
            not_exact_match: false
            formula: false
          visual_relations: ''
          parameter: ''
          name: class name
          flags: '3'
          inner_type: '0'
          type: STRING
      settings: ''
      name: stock_value
      type: Output
      class: VerifyObj
  parameters: []
