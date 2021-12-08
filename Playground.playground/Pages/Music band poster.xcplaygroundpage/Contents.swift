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



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Begin writing your code below (you can remove the examples shown)
// Add a Background
let currentColorA  = Color(hue: 200,
                          saturation: 20,
                          brightness: 40,
                          alpha: 100)
canvas.fillColor = currentColorA
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Draw the under text rainbow
let redline = Color(hue: 359,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)
canvas.lineColor = redline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 45), to: Point(x: 400, y: 45))

let orangeline = Color(hue: 30,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)
canvas.lineColor = orangeline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 50), to: Point(x: 400, y: 50))

let yellowline = Color(hue: 50,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)
canvas.lineColor = yellowline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 55), to: Point(x: 400, y: 55))

let greenline = Color(hue: 141,
                    saturation: 100,
                    brightness: 89,
                    alpha: 100)
canvas.lineColor = greenline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 60), to: Point(x: 400, y: 60))

let bluegreenline = Color(hue: 172,
                    saturation: 100,
                    brightness: 90,
                    alpha: 100)
canvas.lineColor = bluegreenline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 65), to: Point(x: 400, y: 65))

let blueline = Color(hue: 210,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)
canvas.lineColor = blueline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 70), to: Point(x: 400, y: 70))

let purpleline = Color(hue: 266,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)
canvas.lineColor = purpleline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 75), to: Point(x: 400, y: 75))

// Add text
let currentColorB = Color .white
canvas.textColor = currentColorB
canvas.drawText(message: "WATER · GILMOUR · MASON · WRIGHT", at: Point (x: 13, y: 13), size: 20, kerning : 0)
canvas.drawText(message: "LIVE ON STAGE", at: Point (x: 8, y: 41), size: 50, kerning : 0)
canvas.drawText(message: "CARNEGIE HALL", at: Point (x: 68, y: 98), size: 30, kerning : 0)
canvas.drawText(message: "THE DARK SIDE OF THE MOON TOUR", at: Point(x: 18, y: 568), size: 20, kerning: 0)
canvas.drawText(message: "PINK FLOYD", at: Point(x: 18, y: 508), size: 60, kerning: 0)

let currentColorC = Color .black
canvas.textColor = currentColorC
canvas.drawText(message: "WATER · GILMOUR · MASON · WRIGHT", at: Point (x: 15, y: 15), size: 20, kerning : 0)
canvas.drawText(message: "LIVE ON STAGE", at: Point (x: 10, y: 43), size: 50, kerning : 0)
canvas.drawText(message: "CARNEGIE HALL", at: Point (x: 70, y: 100), size: 30, kerning : 0)
canvas.drawText(message: "THE DARK SIDE OF THE MOON TOUR", at: Point(x: 20, y: 570), size: 20, kerning: 0)

let currentColorD = Color . red
canvas.textColor = currentColorD
canvas.drawText(message: "PINK FLOYD", at: Point(x: 20, y: 510), size: 60, kerning: 0)

//// Draw the loop of circle in the middle
canvas.fillColor = .white
for circle in stride(from: 200,
                     through: 400,
                     by: 60){
    canvas.drawEllipse(at: Point(x: 200, y: 320), width: circle, height: circle)
}

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
