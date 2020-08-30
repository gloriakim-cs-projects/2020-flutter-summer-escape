## Submission

The below content will be submitted to my [Dev Post](https://devpost.com/software/new).

## Inspiration

Summer vacation is the perfect time to travel around the world to inspire our perspective and to take a good rest to restore energy to prepare for the new school year! 
However, COVID-19 
But COVID-19 has made us stay home alone, and it seems we should let our traveling desire cool off for a while...or, maybe it's not!
With the help of Augmented Reality (AR), we can all stay safe at home while traveling around the world to fulfill our travel-spirited mind. :)

## What it does

The app will demonstrate the process of virtual travel from packing bags to arriving in destinations! Users can choose the destination and pack their actual stuffs that will be classified using machine learning. Then they will lead to hop on the airplane and finally arrive in destination, where users can enjoy the beautiful scenary of nature.

## How I built it

**1. Design**

- I usd **Adobe XD** to design and demonstrate the basic functions of the app.

**2. Functions**

- I created functions using **Flutter** and designed the specific functions as follows:

**2-1. List Out Destination**
- I used `ListView` to easily list destinations with the predefined class. 

**2.1. Pack Your Bag with Camera**

- I gathered over 100 images for each model and uploaded them on [the website to create the machine learning model](https://teachablemachine.withgoogle.com). There, I created the model to classify objects that users capture using their phone camera. Once the captured photo is classified, users are directed to a new page to notify users that they are successfully classified the iamge by congratulating them for bringing the captured object to thier journey.

**2.2. Fly in Airplane**
- I plan to count down the travelig time to give a more realistic look.
- I plan to record voices just like the flight attendance to give more real feeling of actually riding on the airplane.

**2.3. Enjoy Summer in Destination**

- I plan to provide users the destination's scenary with AR. 

## Challenges I ran into

- Android Studio was somewhat finicky to Flutter. Time to time, Android Studio disconnects its android emulator for no reason. Fortunately, I found that Mac was working fine, so I transferred my codes using GitHub to Mac in order to complete my task. (And somehow, when I completed some portion of coding on Mac, backed up on GitHub, and imported on Android Studio again, it worked again for most of time. I'm not sure why, though.) 
- Also, because Flutter is meant to develop both iOS and android apps all together, I needed to track both requirements. (Still, it's much easier than developing two apps!) I've never developed an iOS app, and I was unfamiliar with the folders for iOS apps. 


## Accomplishments that I'm proud of

- I've never tried myself to code the entire app within 24 hours (or technically even less), and I'm proud that I pushed myself to complete this task! 
- Another thing is I've started learning Flutter since July. I'm proud that I put my commitment to learn new programming langauge and am ready to put more practices to actually soak up that knowledge I learned. 

## What I learned

- I learned to apply a machine learning model in Flutter, which was a huge job in this app. I sorted out all images to make more clear classification. Due to time limit, I gathred 100+ images for each classification, which is not a lot for machine learning techniques, but it still worked!
- I learned many, many new widgets in Flutter that would be very useful for me to develop another Flutter app in future. 
- It may sound silly, but I finally learned to separate classes in Flutter! For the one that I practiced before, I put all data in the `main.dart` file because the project was huge, and I was afraid of losing the track. However, for this project, it was relatively smaller compared to the one that I had, so I tried to minimize my codes as much as possible (which was all new tries!). Fortunately, all shots were successful, and I leanred that developing a small app to test out new functions may be a great way to adapt my past knowledge into my new programming knowledge. 

## What's next for **Summer Escape**

- I hope to include AR features to give an actual feeling of being in the travel destination as well as some sound features. I also hope to include the dark mode that has high contrast so that people who are color-blinded can also easily use the app as well.

