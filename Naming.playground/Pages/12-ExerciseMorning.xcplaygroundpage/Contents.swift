/*: 
 ## Exercise: Fixing Your Morning
 
 There’s a lot to get done before you leave home in the morning. This exercise will help you optimize your routine.
 
 - callout(Exercise): Create a constant for each activity you do in the morning before leaving home: things like `brushTeeth`, `uploadPhotos`, `chooseClothes`, `shower`, `goJogging`, `finishHomework`, `fixLunch`, and so on. Think about how many minutes each activity usually takes, and assign that value to each constant.
 */
let brushTeeth = 3
// Add more here...
let putInContacts = 2
//: - callout(Exercise): Find the total time of all the activities by adding up the constants. Try to adjust the values or add more activities until the total time looks reasonably close to the actual amount of time you spend getting ready on an average day.
let washFace = 2
let findClothes = 2
let putOnClothes = 3
let eatBreakfast = 4

let morningRoutine = brushTeeth + putInContacts + washFace + findClothes + putOnClothes + eatBreakfast
/*:
 See what happens to your total time spent getting ready if you tweak the durations of the different activities. How short of a shower would you have to take in order to have more time to message your friends? Or go for a longer run? How much more time would you need if you decided to spend as long as you wanted doing all the activities you like best?
 
 Change the numbers until you’ve got a design for your ideal morning. What would have to change in order for you to be able to actually spend your morning time this way?
*/
let shower = 5
let run = 15

let morningRoutine2 = brushTeeth + putInContacts + washFace + findClothes + putOnClothes + eatBreakfast + shower + run

//:[Previous](@previous)  |  page 13 of 14  |  [Next: Exercise: Good Names](@next)
