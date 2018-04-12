//: # Exam Prep 1
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
/*:
 Each image is exactly 400 pixels wide by 600 pixels tall.
 
 Your goal is to precisely reproduce this image:
 
 ![blur](blur.png "Blur")
 
 
 By precisely reproducing this image, you will demonstrate your understanding of:
 
 * sequence (order of statements in a program)
 * conditionals (making decisions with ``if`` statements)
 * iteration (use of loops to repeat statements)
 
 You can use the **Digital Color Meter** app (already installed on your Mac) to find specific colours as RGB (red-green-blue) codes.
 
 You [can use this site](http://www.workwithcolor.com/color-converter-01.htm) to convert colours to HSB to use with the Canvas class.
*/

// Create a canvas object to use
let canvas = Canvas(width: 400, height: 600)

// Begin your solution here...

canvas.fillColor = Color.init(hue: 191, saturation: 100, brightness: 81, alpha: 100)

canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

//blur

canvas.drawText(message: "blur", size: 205, x: 10, y: 300, kerning: -5)

//bluuuurrrrr

canvas.textColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 17)

for blury in stride(from: 324, to: -60, by: -8) {
    


canvas.drawText(message: "blur", size: 205, x: 10, y: blury, kerning: -5)

}

//other text

canvas.textColor = Color.init(hue: 0, saturation: 0, brightness: 0, alpha: 100)

canvas.drawText(message: "saturday", size: 10, x: 22, y: 550, kerning: -0.5)

canvas.drawText(message: "october 16 1993 / 8 pm", size: 10, x: 22, y: 540, kerning: -0.5)


canvas.drawText(message: "mandela hall", size: 10, x: 143, y: 550, kerning: -0.5)

canvas.drawText(message: "at university of sussex", size: 10, x: 143, y: 540, kerning: -0.5)








//// REMINDER: here's how to create a square with a fill
//canvas.fillColor = Color(hue: 56, saturation: 7, brightness: 56, alpha: 100)
//canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 50, height: 50)
//
//// REMINDER: here's how to create text in a certain location
//canvas.drawText(message: "blur", size: 96, x: 100, y: 150, kerning: 0)
//// HINT: You can use the kerning property to change the distance between letters
////       Try adjusting the value to positive or negative values. What happens?

/*:
 **Remember to commit and push your work,please**.
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
