//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */

// Move the origin from the bottom-left corner of the canvas to it's centre point

// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Begin writing your code below (you can remove the examples shown)
// Draw Background
let currentColorA  = Color(hue: 335,
                          saturation: 95,
                          brightness: 80,
                          alpha: 100)
canvas.fillColor = currentColorA
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)


canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 15, height: 15, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 75, height: 75, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 135, height: 135, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 195, height: 195, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 255, height: 255, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 315, height: 315, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 375, height: 375, anchoredBy: .centre, borderWidth: 15)


canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 15, height: 15, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 75, height: 75, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 135, height: 135, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 195, height: 195, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 255, height: 255, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 315, height: 315, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 0, y: 400), width: 375, height: 375, anchoredBy: .centre, borderWidth: 15)



canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 400, y: 400), width: 15, height: 15, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 400, y: 400), width: 75, height: 75, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 400, y: 400), width: 135, height: 135, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 400, y: 400), width: 195, height: 195, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 400, y: 400), width: 255, height: 255, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 400, y: 400), width: 315, height: 315, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 400, y: 400), width: 375, height: 375, anchoredBy: .centre, borderWidth: 15)



canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 400, y: 0), width: 15, height: 15, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 400, y: 0), width: 75, height: 75, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 400, y: 0), width: 135, height: 135, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 400, y: 0), width: 195, height: 195, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 400, y: 0), width: 255, height: 255, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .white
canvas.drawRectangle(at: Point(x: 400, y: 0), width: 315, height: 315, anchoredBy: .centre, borderWidth: 15)

canvas.borderColor = .black
canvas.drawRectangle(at: Point(x: 400, y: 0), width: 375, height: 375, anchoredBy: .centre, borderWidth: 15)



//// Draw a Rectangle to hide the not needed square
let currentColorD  = Color(hue: 335,
                          saturation: 95,
                          brightness: 80,
                          alpha: 100)

canvas.fillColor = currentColorD
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = false

canvas.drawRectangle(at: Point(x: 0, y: 400), width: 400, height: 200)

// Add Text
let currentColorB = Color(hue: 300,
                          saturation: 5,
                          brightness: 100,
                          alpha: 100)
canvas.textColor = currentColorB
canvas.drawText(message: "the runaways", at: Point (x: 10, y: 410), size: 54, kerning : 0)

let currentColorC = Color .black
canvas.textColor = currentColorC
canvas.drawText(message: "friday", at: Point (x: 20, y: 550), size: 8, kerning : 0)
canvas.drawText(message: "august 19 1977", at: Point (x: 20, y: 535), size: 8, kerning : 0)
canvas.drawText(message: "tickets $4.50", at: Point (x: 20, y: 520), size: 8, kerning : 0)
canvas.drawText(message: "with", at: Point (x: 130, y: 550), size: 8, kerning : 0)
canvas.drawText(message: "special guests", at: Point (x: 130, y: 535), size: 8, kerning : 0)
canvas.drawText(message: "wolfgang", at: Point (x: 130, y: 520), size: 8, kerning : 0)
canvas.drawText(message: "at ben h. lewis hall", at: Point (x: 293, y: 550), size: 8, kerning : 0)
canvas.drawText(message: "special guests", at: Point (x: 293, y: 535), size: 8, kerning : 0)
canvas.drawText(message: "wolfgang", at: Point (x: 293, y: 520), size: 8, kerning : 0)


// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
