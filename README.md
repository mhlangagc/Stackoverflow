## StackOverflow
Implementation of a StackOverflow search interface

### Description
This app is a simple implementation of a question searching on Stack Overflow. It has the following features:
- Searching for a question using the `/questions` API endpoint
- Questions are searched using the `tagged` parameter. i.e. the search query you type is used as a tag in searching for a list of top matching questions. 
- Selecting a result will display the body of the question, owner and a few additional features. 

### API End Point Example:
`https://api.stackexchange.com/2.2/questions?pagesize=20&order=desc&sort=activity&tagged=android&site=stackoverflow&filter=withbody`

### Extra Features:
- Dark Mode Addition. 😎
- Unit Testing - with a 32% Code Coverage (so far). UI tests could be added to improve this. 
- The Network / APIKit class was not tested. Integrating a library like Mockito/Cuckoo to mock that class could be used so the tests can be easily written. 

### Summary of Architectural Structure 
- MVVM Structure with a Observable Pattern
- Used a Factory Pattern to abstract away the creation of some components / classes. 
- No Storyboards or XIB's where used, but they can be. 🤓

## CI/CD
- Added Fastlane to run the unit tests and code coverage. Code Coverage Report could be posted to Slac. 
- Integration of Travis - since this is an open source project

## Screenshots
![IMG_1062E656BA54-1](https://user-images.githubusercontent.com/5164871/107460592-0da74d80-6b61-11eb-9f8f-5ea84abaa68e.jpeg)

## DarkMode Screenshots
![IMG_3133](https://user-images.githubusercontent.com/5164871/107460628-1d269680-6b61-11eb-95bd-8ea4890b228e.PNG)
