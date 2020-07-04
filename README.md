# Integration of Scalapay api in flutter

## General description about the content
This project shows the usuage of 

    1.   GET v2/configurations
         https://staging.api.scalapay.com/v2/configurations

    2.  POST v2/orders
        https://staging.api.scalapay.com/v2/orders


There are basically two screens in the app. The first screen displays the configuration obtained from 1. Then, it will ask user to place order. Here, the orders are in the form of hardcoded json value. So, user won't be able to place order by selecting items himself (Need to be implemented). 

So, after placing order using step 2, user can then see his order details in second page. I have provided a button to see the token and checkout url returned by the api. We can click on the url to navigate into it.

Please watch the video below.

![](20200704_171254.gif)


You can download app from 
https://github.com/rmsh03dhj/scalapay_integration_flutter/blob/master/app.apk

or else clone the project, run **flutter pub get** and build app to run either on emulator or device. 
