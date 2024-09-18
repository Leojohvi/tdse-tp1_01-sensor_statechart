{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    in event myEvent\n    in event EV_BTN_01_UP\n    in event EV_BTN_01_DOWN\n    out event EV_SYS_01_DOWN\n    \ninternal:\n\n    var tick:integer\n    const DEL_BTN_01_MAX:integer = 50\n"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 200,
          "y": 200
        },
        "size": {
          "height": 60,
          "width": 86.41667175292969
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 4,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_UP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 407,
          "y": 380
        },
        "size": {
          "width": 144.03125,
          "height": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 11,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "embeds": [
          "76e5badd-ae4d-4689-a2d1-24f56d91517d"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_INCREASING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 378,
          "y": 70
        },
        "size": {
          "height": 60,
          "width": 122.42708587646484
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "afde65a6-4aea-46f0-9519-36d75162e179",
        "z": 13,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "embeds": [
          "e1006e5d-1f94-4340-9a0a-3b747bd66271"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_FALLING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 601,
          "y": 214
        },
        "size": {
          "height": 60,
          "width": 100.82292175292969
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "68e0e637-0ade-4923-951e-b7aad48e0344",
        "z": 14,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_DOWN"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 45.008331298828125,
              "dy": 55,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP\n[tick ==0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "6ec2b8c7-2b9c-42e8-9f76-04d9f816c832",
        "z": 18,
        "marker": [
          "mismatched input '<EOF>' expecting ']'"
        ],
        "attrs": {
          "line": {
            "strokeWidth": 4
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 132.5,
          "y": 222.5
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 19,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 132.5,
          "y": 237.5
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 20,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 21,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "68e0e637-0ade-4923-951e-b7aad48e0344"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 141.015625,
              "dy": 39.333343505859375,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP\n/tick = DEL_BTN_01_MAX"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "5444fcf7-7e22-4f27-b71d-f72dfbfc0af1",
        "z": 24,
        "vertices": [
          {
            "x": 651.41,
            "y": 419.33
          },
          {
            "x": 600,
            "y": 425.33
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "68e0e637-0ade-4923-951e-b7aad48e0344",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.011474609375,
              "dy": 30.333328247070312,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN\n[tick>0]"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "438a46c1-3d9d-4b93-9979-3483a913794e",
        "z": 25,
        "marker": [
          "Dead transition. This transition is never taken due to the precedence of completion transition."
        ],
        "vertices": [
          {
            "x": 496,
            "y": 276
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "afde65a6-4aea-46f0-9519-36d75162e179",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 6.613555908203125,
              "dy": 33.333335876464844,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN\n/tick =DEL_BTN_01_MAX  "
              }
            },
            "position": {
              "distance": 0.26520016891828924,
              "offset": -26,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "efebeb33-cbc0-4325-a930-424a3f4d7cdf",
        "z": 26,
        "vertices": [
          {
            "x": 360,
            "y": 103.33
          }
        ],
        "marker": [
          "Failed to parse Expression '\\'."
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "afde65a6-4aea-46f0-9519-36d75162e179"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 85.00833129882812,
              "dy": 38,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP\n[tick < DEL_BTN_01_MAX]"
              }
            },
            "position": {
              "distance": 0.601170453155265,
              "offset": 37.469635009765625,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "9e14cd67-9a5d-41a4-826b-3a3c8a7eb54d",
        "z": 27,
        "marker": [
          "Dead transition. This transition is never taken due to the precedence of completion transition."
        ],
        "vertices": [
          {
            "x": 337,
            "y": 238
          }
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "afde65a6-4aea-46f0-9519-36d75162e179"
        },
        "target": {
          "id": "68e0e637-0ade-4923-951e-b7aad48e0344",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 57.011474609375,
              "dy": 11.333328247070312,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN[tick ==0]"
              }
            },
            "position": {
              "distance": 0.4960699970839816,
              "offset": -24,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "131fdf57-83d1-4de7-aad2-ab447c6ec9ce",
        "z": 28,
        "marker": [
          "Dead transition. This transition is never taken due to the precedence of completion transition."
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "afde65a6-4aea-46f0-9519-36d75162e179"
        },
        "target": {
          "id": "afde65a6-4aea-46f0-9519-36d75162e179",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 24.607818603515625,
              "dy": 3,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_DOWN\n[tick >0]\n/tick --"
              }
            },
            "position": {
              "distance": 0.44829048118038134,
              "offset": 31.41400405216776,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "id": "e1006e5d-1f94-4340-9a0a-3b747bd66271",
        "z": 29,
        "parent": "afde65a6-4aea-46f0-9519-36d75162e179",
        "vertices": [
          {
            "x": 443.21,
            "y": -12
          }
        ],
        "marker": [
          "The evaluation result of a guard expression must be of type boolean."
        ],
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 89.015625,
              "dy": 57,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_UP\n[tick>0]\n/tick--"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "id": "76e5badd-ae4d-4689-a2d1-24f56d91517d",
        "z": 30,
        "parent": "db372094-acc6-467b-b44d-495606208445",
        "vertices": [
          {
            "x": 431,
            "y": 578
          },
          {
            "x": 468,
            "y": 578
          },
          {
            "x": 468,
            "y": 622
          }
        ],
        "marker": [
          "Failed to parse Expression '/'."
        ],
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "schemaKey": "yakindu::c",
      "LicenseHeader": {
        "licenseText": ""
      },
      "FunctionInlining": {
        "inlineReactions": false,
        "inlineEntryActions": false,
        "inlineExitActions": false,
        "inlineEnterSequences": false,
        "inlineExitSequences": false,
        "inlineChoices": false,
        "inlineEnterRegion": false,
        "inlineExitRegion": false,
        "inlineEntries": false
      },
      "OutEventAPI": {
        "observables": false,
        "getters": false
      },
      "IdentifierSettings": {
        "moduleName": "SensorStatechart",
        "statemachinePrefix": "sensorStatechart",
        "separator": "_",
        "headerFilenameExtension": "h",
        "sourceFilenameExtension": "c"
      },
      "Tracing": {
        "enterState": false,
        "exitState": false,
        "generic": false
      },
      "Includes": {
        "useRelativePaths": false
      },
      "GeneratorOptions": {
        "userAllocatedQueue": false,
        "metaSource": false
      },
      "GeneralFeatures": {
        "timerService": false
      }
    }
  }
}