___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Ecomail",
  "brand": {
    "id": "brand_dummy",
    "displayName": "",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAFoAAAA8CAYAAADmBa1FAAAACXBIWXMAACE4AAAhOAFFljFgAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAOHSURBVHgB7Zw9b9NAHId/d2cndpo0LyWl6VtoRCtVFHVAgs6sfAMW+AYwslE+ASMj9BOxMTBUYmBhshBLX+Lgf1JXbZXm8nL23dl+xigv1qPT+fHdKQwRr7+8/MjDwfsBQwMFymADBAPGvu3uh5/E1++vPvsu/xD8C70wRIFCuIC33GFHfU+ccYR4u94WeLbvwSszFKhBuECrK+DXOSKr73j02nC6qFZYIVsRsWTHu36pwW++wS8XshfFjeSu9MRQ9k343TeS7KMDD81ljoLZ8OsMzWgk8zHqxtp0nNHI3l5zUDAd1QcM9XU+VjIxcdjudUvobbgomEztIUO1PXkGkA7Z3uZI9OnvCxTchkZvbY0Ny0LGVHMDya4tcfw4PcfF5QAFo7Jobt4qi4lMfcdrN4vWjhmTb1JmSouite/PNxkzN1zc2rVK/mRTvq3siHvLYhJzxXIsu90SyAtxvs3L3J+k1j7cLeeitafJNxkLW6LWdgTLZP7RFFHf4ChXF58mlQxHyj8a4T9/nSMrzJpvMpQtaNAUcrhXhuvYf5OcJ99kKF05otZ+fmB3/s2bbzKUL9HZvNS6SL7JSGQt1MbWXjTfZCT2zTa1top8k5Hot8etbepSK00RzS2OpVbymxypPG2YuNSqOt9kpLZfRbLp4cYEksg3GaluDFJr07yts7WTyjcZqe/A0qavrtZOMt9kaNnq1tHaSeebDG2/nGZrp5FvMrT+eiy7004mftLMN+m1QDPU2k966o81xGWhYolTBcas2qts7ViyMOg5yahzXypaW1e+yTDugB219tFTf67W1plvMow8yUjHGmZtbd35JsPYK5ultU3INxlGX118hPi+1qYpotU1I99kGH+FlH8vojn7bmvHZVGyZHPB/KFwxc3W1rH6tihWnX6h/OPRhs1fPzSyLCZh2eUCjzouuhU3EMyuzV/rRBP1Em/sVFyULJJtpWjCEww7S/bItlY04fKRbI+bL9tq0QTJflwtBQ3X7GMN1ou+orHpO1gtmys7K6KHrJbNlZ0p0QTJ3vLMy7/MiSZMzL9MiiZMy7/MiiZMyr9Miyau8g+68y/zomN0519uRBM68y9XogmSve27SDv/cieaWHY50s6/XIom0s4/Eh0gp6SYfwHHgJ0gx8T5t1JK8ibJThwI5xj9S/p/xzdAfv8ys+NFKqKB/eesD4UEJLmPi+P/q6xjuZmK8TsAAAAASUVORK5CYII\u003d"
  },
  "description": "Send data to ecomail with their API",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "api_key",
    "displayName": "API Key",
    "simpleValueType": true
  },
  {
    "type": "SELECT",
    "name": "request_type",
    "displayName": "Request type",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "transaction",
        "displayValue": "Transaction"
      },
      {
        "value": "events",
        "displayValue": "Event"
      },
      {
        "value": "only_add_email",
        "displayValue": "Only add email"
      }
    ],
    "simpleValueType": true,
    "help": "If use variables, you must have set transaction or events or only_add_email"
  },
  {
    "type": "TEXT",
    "name": "email",
    "displayName": "User e-mail",
    "simpleValueType": true
  },
  {
    "type": "GROUP",
    "name": "Add email",
    "displayName": "Data about user",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "email_list_id",
        "displayName": "ID list",
        "simpleValueType": true,
        "help": "When I add email to list. I need ID of the list. You can found ID list in ecomail administration."
      },
      {
        "type": "TEXT",
        "name": "user_name",
        "displayName": "Name",
        "simpleValueType": true,
        "canBeEmptyString": true
      },
      {
        "type": "TEXT",
        "name": "user_surname",
        "displayName": "Surname",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "user_city",
        "displayName": "City",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "user_street",
        "displayName": "Street",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "user_zip",
        "displayName": "ZIP code",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "user_country",
        "displayName": "Country",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "user_phone",
        "displayName": "Phone number",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "user_source",
        "displayName": "Source of contact",
        "simpleValueType": true
      },
      {
        "type": "SELECT",
        "name": "trigger_autoresponders",
        "displayName": "Trigger automations on subscribe",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": true,
            "displayValue": "True"
          },
          {
            "value": false,
            "displayValue": "False"
          }
        ],
        "simpleValueType": true,
        "defaultValue": false
      },
      {
        "type": "SELECT",
        "name": "update_existing",
        "displayName": "Update an already existing subscriber",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": true,
            "displayValue": "True"
          },
          {
            "value": false,
            "displayValue": "False"
          }
        ],
        "simpleValueType": true,
        "defaultValue": false
      },
      {
        "type": "SELECT",
        "name": "resubscribe",
        "displayName": "In case of unsubscribed status force resubscribe",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": true,
            "displayValue": "True"
          },
          {
            "value": false,
            "displayValue": "False"
          }
        ],
        "simpleValueType": true,
        "defaultValue": false
      },
      {
        "type": "SELECT",
        "name": "skip_confirmation",
        "displayName": "Skip double opt-in confirmation",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": true,
            "displayValue": "True"
          },
          {
            "value": false,
            "displayValue": "False"
          }
        ],
        "simpleValueType": true,
        "defaultValue": false
      }
    ],
    "help": "User data is not required. Required is only e-mail."
  },
  {
    "type": "GROUP",
    "name": "Event",
    "displayName": "Data for common event",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "event_category",
        "displayName": "Category",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "event_action",
        "displayName": "Action",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "event_label",
        "displayName": "Label",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "event_property",
        "displayName": "Property",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "event_value",
        "displayName": "Value",
        "simpleValueType": true
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "Transaction",
    "displayName": "Data for transaction",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "order_id",
        "displayName": "Order ID",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "order_shop",
        "displayName": "Order shop",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "order_amount",
        "displayName": "Order amount (value)",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "order_tax",
        "displayName": "Tax of order",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "order_shipping",
        "displayName": "Shipping price",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "add_new_email",
        "checkboxText": "Add new email",
        "simpleValueType": true,
        "help": "If you select true, I add the e-mail as new user into ecomail system. I recomnded."
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "Items",
    "displayName": "Data for items",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "items",
        "displayName": "Items (for transaction and cart)",
        "simpleValueType": true,
        "help": "I need array items in GA4 format"
      },
      {
        "type": "TEXT",
        "name": "items_price",
        "displayName": "Object key with price of product",
        "simpleValueType": true,
        "defaultValue": "price"
      }
    ]
  },
  {
    "type": "PARAM_TABLE",
    "name": "params_to_tags",
    "displayName": "Items params into tags/descriptions",
    "paramTableColumns": [
      {
        "param": {
          "type": "TEXT",
          "name": "param_name",
          "displayName": "Param name",
          "simpleValueType": true
        },
        "isUnique": true
      }
    ],
    "help": "In transactions join this params into param name tags. In event cart join this params into param name descriptions."
  },
  {
    "type": "GROUP",
    "name": "Debug",
    "displayName": "Debug options",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "debugMode",
        "checkboxText": "SGTM Debug mode",
        "simpleValueType": true
      },
      {
        "type": "CHECKBOX",
        "name": "mockServer",
        "checkboxText": "Use mock server",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "debug_server_url",
        "displayName": "Mock server URL",
        "simpleValueType": true
      }
    ]
  }
]


___SANDBOXED_JS_FOR_SERVER___

//Setup constants
const JSON = require('JSON');
const encodeUri = require('encodeUri');
const logToConsole = require('logToConsole');
const sendHttpRequest = require('sendHttpRequest');
const getTimestamp = require('getTimestamp');
const createRegex = require('createRegex');
const testRegex = require('testRegex');
const callLater = require('callLater');


//Check IF I have an email in input data. 
const emailRegex = createRegex('@', 'i');
if (emailRegex === null) return;
if (testRegex(emailRegex, data.email) === false) {
  data.gtmOnFailure(); 
  return ;
}

//Setup basic array for POST request to Ecomail
if (data.request_type == 'transaction') {
  var post_data = {   
    'transaction': {
      'order_id': data.order_id,
      'email': data.email,
      'shop': data.order_shop,
      'amount': data.order_amount,
      'tax': data.order_tax,
      'shipping': data.order_shipping,
      'city': data.order_city,
      'country': data.order_country,
      'timestamp': (getTimestamp() / 1000)
    },
    'transaction_items': []
  };
} else if (data.request_type == 'events') {  
  var post_data = {
    'event': {
      'email': data.email,
      'category': data.event_category,
      'action': data.event_action,
      'label': data.event_label,
      'property': data.event_property,
      'value': data.event_value,    
    }
  };
}

//If I recognize than user wants event "Add to cart" I set value to special format for this situation. And I transform items from GA4 format to especialy format fro ecomail events.
if (data.event_action == 'Basket' && data.event_label == 'Basket' && typeof data.items != 'undefined') {
  var cart_event_value = { 
    data: {
      data: {
        action: 'Basket',
        products: []
      }
    }
  };
  data.items.forEach(function(produkt, index) {
    cart_event_value.data.data.products[index] = {
      'productId': produkt.item_id,
      'img_url': produkt.image_url,
      'url': produkt.url,
      'name': produkt.item_name,
      'price': produkt[data.items_price]
    } ;
    //Add parameters to event name tags
    var product_params_to_description = [];
    if (typeof data.params_to_tags != 'undefined') {
      data.params_to_tags.forEach(function(param_column, param_index) {
        if (produkt[param_column.param_name]) {
          product_params_to_description[param_index] = produkt[param_column.param_name];
        }
      });
      cart_event_value.data.data.products[index].description = product_params_to_description;
    }
    
  });
  
  post_data.event.value = JSON.stringify(cart_event_value);
}

//Convert products from GA4 format to ecomail format and insert into POST request. If products exists.
if (data.request_type == 'transaction' && typeof data.items != 'undefined') {
  var categoryKeys = ['item_category', 'item_category2', 'item_category3', 'item_category4', 'item_category5'];
  
  data.items.forEach(function(produkt, index) {
    var combinedCategories = [];
    for (const key of categoryKeys) {
      if (produkt[key]) {
        combinedCategories.push(produkt[key]);
      }
    }
    post_data.transaction_items[index] = {
      'code': produkt.item_id,
      'title': produkt.item_name,
      'category': combinedCategories.join(' | '),
      'price': produkt[data.items_price],
      'amount': produkt.quantity
    } ;
    
    
    //Add parameters to event name tags
    var product_params_to_tags = [];
    if (typeof data.params_to_tags != 'undefined') {
      data.params_to_tags.forEach(function(param_column, param_index) {
        if (produkt[param_column.param_name]) {
          product_params_to_tags[param_index] = produkt[param_column.param_name];
        }
      });
      post_data.transaction_items[index].tags = product_params_to_tags;
    }
    
  });
}

//SetUp method and URL to subscribers. 
if (data.update_existing == true && data.add_new_email == false) {
  var method = 'PUT';
  var subscriber_endpoint = 'update-subscriber';
} else {
  var method = 'POST';
  var subscriber_endpoint = 'subscribe';  
}


//When I have use mock server
if (data.mockServer == true) {
  var url_api = encodeUri(data.debug_server_url)+'/tracker/'+encodeUri(data.request_type);
  var url_api_subscribe = encodeUri(data.debug_server_url)+'/lists/'+encodeUri(data.email_list_id)+'/'+encodeUri(subscriber_endpoint);
} else {
  var url_api = 'https://api2.ecomailapp.cz/tracker/'+encodeUri(data.request_type);
  var url_api_subscribe = 'https://api2.ecomailapp.cz/lists/'+encodeUri(data.email_list_id)+'/'+encodeUri(subscriber_endpoint);
}

//Set function for send data to Ecomail about transaction or events
function transaction_send() {
  if (data.request_type == 'transaction' || data.request_type == 'events') {
    
    //if debug_mode On, write complete JSON to Console
    if (data.debugMode == true) {
      logToConsole(JSON.stringify({
        'Point': 'Ecomail - POST data',
        'POST data': post_data
      }));
    }
      
      
    sendHttpRequest(url_api, (statusCode, headers, body) => {
      if (statusCode >= 200 && statusCode < 300) {
        if (data.debugMode == true) {
          logToConsole(JSON.stringify({
            'Point': 'Ecomail '+data.request_type+' - Success',
            'ResponseStatusCode': statusCode,
            'ResponseHeaders': headers,
            'ResponseBody': body
          }));
        }
        data.gtmOnSuccess();
      } else {
        if (data.debugMode == true) {
          logToConsole(JSON.stringify({
            'Point': 'Ecomail '+data.request_type+' - Failure',
            'ResponseStatusCode': statusCode,
            'ResponseHeaders': headers,
            'ResponseBody': body
          }));
        }
        data.gtmOnFailure(); 
      }},
      {
        headers: {
          'content-type': 'application/json',
          'key': data.api_key
        },
        method: 'POST', 
        timeout: 2000
       },
       JSON.stringify(post_data)
    );
  }
}//function transaction_send

//Send data to Ecomail about transaction or events only, when I not wanted add_new_email
if (data.add_new_email !== true) {
  transaction_send();
}

//Add or edit email contact in a list
if (data.email_list_id && (data.request_type == 'only_add_email' || (data.request_type == 'transaction' && (data.add_new_email == true || data.update_existing == true)))) {

  if (data.update_existing == true && data.add_new_email == false) {
    var post_data_subscribe = {   
      'email': data.email,
      'subscriber_data': {
        "name": data.user_name,
        "surname": data.user_surname,
        "city": data.user_city,
        "street": data.user_street,
        "zip": data.user_zip,
        "country": data.user_country,
        "phone": data.user_phone,
        "source": data.user_source
      }
    }; 
  } else {
    var post_data_subscribe = {   
      'subscriber_data': {
        "name": data.user_name,
        "email": data.email,
        "surname": data.user_surname,
        "city": data.user_city,
        "street": data.user_street,
        "zip": data.user_zip,
        "country": data.user_country,
        "phone": data.user_phone,
        "source": data.user_source,      
      },
        "trigger_autoresponders": data.trigger_autoresponders,
        "update_existing": data.update_existing,
        "skip_confirmation": data.skip_confirmation,
        "resubscribe": data.resubscribe
    };
  }

  //if debug_mode On, write complete JSON to Console
  if (data.debugMode == true) {
    logToConsole(JSON.stringify({
      'Point': 'Ecomail - POST data subscribe',
      'POST data': post_data_subscribe
    }));
  }

  sendHttpRequest(url_api_subscribe, (statusCode, headers, body) => {
    if (statusCode >= 200 && statusCode < 300) {
      if (data.debugMode == true) {
        logToConsole(JSON.stringify({
          'Point': 'Ecomail subscribe - Success',
          'ResponseStatusCode': statusCode,
          'ResponseHeaders': headers,
          'ResponseBody': body
        }));
      }
      transaction_send();
      data.gtmOnSuccess();
    } else {
      if (data.debugMode == true) {
        logToConsole(JSON.stringify({
          'Point': 'Ecomail subscribe - Failure',
          'ResponseStatusCode': statusCode,
          'ResponseHeaders': headers,
          'ResponseBody': body
        }));
      }
      transaction_send();
      data.gtmOnFailure();     
    }},
    {
      headers: {
        'content-type': 'application/json',
        'key': data.api_key
      },
      method: method, 
      timeout: 2000
     },
     JSON.stringify(post_data_subscribe)
  );

}//add or edit contact


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "any"
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

Created on 31. 3. 2024 22:37:44


