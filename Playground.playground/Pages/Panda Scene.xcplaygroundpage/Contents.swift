//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 700
let preferredHeight = 500
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics
import Foundation

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
canvas.translate(to: Point(x: canvas.width / 2,
                           y: canvas.height / 2))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */
// Begin writing your code below (you can remove the examples shown)

// Make a gradient going from full brightness to low brightness
canvas.defaultLineWidth = 5
for value in stride(from: 0,
                    through: 100,
                    by: 1) {
    
    // Set up the color
    let currentColor  = Color(hue: 157,
                              saturation: 100,
                              brightness: value,
                              alpha: 100)
    canvas.lineColor = currentColor
    
    // Draw a line
    canvas.drawLine(from: Point(x: -500, y: value*5-250),
                    to: Point(x: 500, y: value*5-250))
}

// Draw panda's ear
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -120, y: 120),
                   width: 100, height: 100)

// Draw panda's ear
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 120, y: 120),
                   width: 100, height: 100)

// Draw panda's feet
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -40, y: -100), width: 100, height: 180)

canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 40, y: -100), width: 100, height: 180)

// Draw panda's body
canvas.fillColor = .white
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 0, y: -40), width: 200, height: 250)

// Draw panda's hands
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -80, y: -50), width: 40, height: 80)

canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 80, y: -50), width: 40, height: 80)

// Draw panda's head
canvas.fillColor = .white
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 0, y: 50), width: 320, height: 220)

// Draw panda's nose
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 0, y: 0), width: 60, height: 30)

// Draw panda's eyes
canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -60, y: 70), width: 80, height: 50)

canvas.fillColor = .black
canvas.borderColor = .black
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 60, y: 70), width: 80, height: 50)

canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 60, y: 70), width: 40, height: 50)

canvas.fillColor = .white
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -60, y: 70), width: 40, height: 50)

canvas.fillColor = .black
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 60, y: 70), width: 20, height: 30)

canvas.fillColor = .black
canvas.borderColor = .white
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: -60, y: 70), width: 20, height: 30)
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
