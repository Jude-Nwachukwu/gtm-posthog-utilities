___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "PostHog Utility (Including Session Replay URL)",
  "description": "Use this variable for PostHog utilities to retrieve the session replay URL and session ID of a user\u0027s session.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "selectUtilityOption",
    "displayName": "Select PostHog Variable to Retrieve",
    "macrosInSelect": false,
    "selectItems": [
      {
        "value": "phPlaybackURL",
        "displayValue": "Session Replay URL"
      },
      {
        "value": "phSessionID",
        "displayValue": "Session ID"
      }
    ],
    "simpleValueType": true,
    "help": "Select the PostHog variable you want to retrieve in your GTM setup.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const callInWindow = require('callInWindow');
const makeString = require('makeString');

const selectedOption = data.selectUtilityOption;

let result;

if (selectedOption === 'phPlaybackURL') {
  result = callInWindow('posthog.get_session_replay_url');
} else if (selectedOption === 'phSessionID') {
  result = callInWindow('posthog.get_session_id');
}

return result ? makeString(result) : undefined;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "posthog.get_session_replay_url"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "posthog.get_session_id"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 4/15/2025, 11:00:26 AM


