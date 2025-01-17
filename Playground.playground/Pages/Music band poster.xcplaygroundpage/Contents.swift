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
// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

// Move the origin from the bottom-left corner of the canvas to it's centre point

//// Draw the axes
//canvas.drawAxes(withScale: true, by: 50, color: redline)
/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */
// Begin writing your code below (you can remove the examples shown)

// Set up all the rainbow color
let redline = Color(hue: 359,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)

let orangeline = Color(hue: 30,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)

let yellowline = Color(hue: 50,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)

let greenline = Color(hue: 141,
                    saturation: 100,
                    brightness: 89,
                    alpha: 100)

let bluegreenline = Color(hue: 172,
                    saturation: 100,
                    brightness: 90,
                    alpha: 100)

let blueline = Color(hue: 210,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)

let purpleline = Color(hue: 266,
                    saturation: 100,
                    brightness: 100,
                    alpha: 100)


// Add a Background
let currentColorA  = Color(hue: 200,
                          saturation: 20,
                          brightness: 40,
                          alpha: 100)
canvas.fillColor = currentColorA
canvas.drawRectangle(at: Point(x: 0, y: 0), width: 400, height: 600)

// Draw the top rainbow
canvas.lineColor = redline
canvas.defaultLineWidth = 10
canvas.drawLine(from: Point(x: 0, y: 470), to: Point(x: 200, y: 470))

canvas.lineColor = orangeline
canvas.defaultLineWidth = 10
canvas.drawLine(from: Point(x: 0, y: 460), to: Point(x: 200, y: 460))

canvas.lineColor = yellowline
canvas.defaultLineWidth = 10
canvas.drawLine(from: Point(x: 0, y: 450), to: Point(x: 200, y: 450))

canvas.lineColor = greenline
canvas.defaultLineWidth = 10
canvas.drawLine(from: Point(x: 0, y: 440), to: Point(x: 200, y: 440))

canvas.lineColor = bluegreenline
canvas.defaultLineWidth = 10
canvas.drawLine(from: Point(x: 0, y: 430), to: Point(x: 200, y: 430))

canvas.lineColor = blueline
canvas.defaultLineWidth = 10
canvas.drawLine(from: Point(x: 0, y: 420), to: Point(x: 200, y: 420))

canvas.lineColor = purpleline
canvas.defaultLineWidth = 10
canvas.drawLine(from: Point(x: 0, y: 410), to: Point(x: 200, y: 410))

//Draw the rainbow curve
canvas.lineColor = redline
canvas.drawCurve(from: Point(x: 200, y: 470),
                 to: Point(x: 250, y: 610),
                 control1: Point(x: 320, y: 470),
                 control2: Point(x: 350, y: 550),
                 showControlPoints: false)

canvas.lineColor = orangeline
canvas.drawCurve(from: Point(x: 200, y: 460),
                 to: Point(x: 260, y: 610),
                 control1: Point(x: 320, y: 460),
                 control2: Point(x: 350, y: 550),
                 showControlPoints: false)

canvas.lineColor = yellowline
canvas.drawCurve(from: Point(x: 200, y: 450),
                 to: Point(x: 270, y: 610),
                 control1: Point(x: 320, y: 450),
                 control2: Point(x: 350, y: 550),
                 showControlPoints: false)

canvas.lineColor = greenline
canvas.drawCurve(from: Point(x: 200, y: 440),
                 to: Point(x: 280, y: 610),
                 control1: Point(x: 320, y: 440),
                 control2: Point(x: 350, y: 550),
                 showControlPoints: false)

canvas.lineColor = bluegreenline
canvas.drawCurve(from: Point(x: 200, y: 430),
                 to: Point(x: 290, y: 610),
                 control1: Point(x: 320, y: 430),
                 control2: Point(x: 350, y: 550),
                 showControlPoints: false)

canvas.lineColor = blueline
canvas.drawCurve(from: Point(x: 200, y: 420),
                 to: Point(x: 300, y: 610),
                 control1: Point(x: 320, y: 420),
                 control2: Point(x: 350, y: 550),
                 showControlPoints: false)

canvas.lineColor = purpleline
canvas.drawCurve(from: Point(x: 200, y: 410),
                 to: Point(x: 310, y: 610),
                 control1: Point(x: 320, y: 410),
                 control2: Point(x: 350, y: 550),
                 showControlPoints: false)

// Draw the big triangle in the middle of the poster
let currentColorF  = Color(hue: 200,
                          saturation: 20,
                          brightness: 30,
                          alpha: 100)
canvas.fillColor = currentColorF
canvas.borderColor = .white
canvas.defaultBorderWidth = 10
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
var tribertices: [Point] = []
        tribertices.append(Point(x: 0, y: 120))
        tribertices.append(Point(x: 400, y: 120))
        tribertices.append(Point(x: 200, y: 470))
        canvas.drawCustomShape(with: tribertices)

// Color of loop of circle
let currentColorB = Color(hue: 241,
                          saturation: 14,
                          brightness: 100,
                          alpha: 100)

// Draw the loop of circle in the middle
canvas.defaultBorderWidth = 1
canvas.borderColor = currentColorB
canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
for circle in stride(from: 200,
                     through: 400,
                     by: 60){
    canvas.drawEllipse(at: Point(x: 200, y: 260), width: circle, height: circle)
}

canvas.drawShapesWithBorders = true
canvas.drawShapesWithFill = false
for circle in stride(from: 80,
                     through: 180,
                     by: 30){
    canvas.drawEllipse(at: Point(x: 200, y: 260), width: circle, height: circle)
}

// Draw detailed circle in between the triangle
canvas.defaultLineWidth = 1
canvas.borderColor = currentColorB
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 200, y: 370), width: 100, height: 100)
canvas.drawEllipse(at: Point(x: 86, y: 170), width: 100, height: 100)
canvas.drawEllipse(at: Point(x: 315, y: 170), width: 100, height: 100)
canvas.drawEllipse(at: Point(x: 80, y: 220), width: 40, height: 40)
canvas.drawEllipse(at: Point(x: 240, y: 290), width: 40, height: 40)
canvas.drawEllipse(at: Point(x: 175, y: 160), width: 40, height: 40)
canvas.drawEllipse(at: Point(x: 105, y: 350), width: 40, height: 40)
canvas.drawEllipse(at: Point(x: 320, y: 310), width: 40, height: 40)

canvas.defaultBorderWidth = 2
canvas.borderColor = currentColorB
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
canvas.drawEllipse(at: Point(x: 200, y: 260), width: 60, height: 60)
canvas.drawEllipse(at: Point(x: 200, y: 260), width: 50, height: 50)

// Draw the up side down triangle in the big triangle
canvas.borderColor = .white
canvas.drawShapesWithFill = false
canvas.drawShapesWithBorders = true
var tribertices2: [Point] = []
        tribertices2.append(Point(x: 200, y: 120))
        tribertices2.append(Point(x: 100, y: 300))
        tribertices2.append(Point(x: 300, y: 300))
        canvas.drawCustomShape(with: tribertices2)

// Lines in between the triangle
canvas.lineColor = .white
canvas.defaultLineWidth = 2
canvas.drawLine(from: Point(x: 197, y: 128),
                to: Point(x: 197, y: 468))
canvas.drawLine(from: Point(x: 203, y: 128),
                to: Point(x: 203, y: 468))

canvas.drawLine(from: Point(x: 76, y: 254),
                to: Point(x: 400, y: 124))
canvas.drawLine(from: Point(x: 74, y: 248),
                to: Point(x: 394, y: 120))

canvas.drawLine(from: Point(x: 0, y: 119),
                to: Point(x: 326, y: 248))
canvas.drawLine(from: Point(x: 0, y: 125),
                to: Point(x: 326, y: 254))

// Draw the under text rainbow
canvas.lineColor = redline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 45), to: Point(x: 400, y: 45))

canvas.lineColor = orangeline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 50), to: Point(x: 400, y: 50))

canvas.lineColor = yellowline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 55), to: Point(x: 400, y: 55))

canvas.lineColor = greenline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 60), to: Point(x: 400, y: 60))

canvas.lineColor = bluegreenline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 65), to: Point(x: 400, y: 65))

canvas.lineColor = blueline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 70), to: Point(x: 400, y: 70))

canvas.lineColor = purpleline
canvas.defaultLineWidth = 5
canvas.drawLine(from: Point(x: 0, y: 75), to: Point(x: 400, y: 75))


// Add text
let currentColorC = Color .white
canvas.textColor = currentColorC
canvas.drawText(message: "WATER · GILMOUR · MASON · WRIGHT", at: Point (x: 13, y: 13), size: 20, kerning : 0)
canvas.drawText(message: "LIVE ON STAGE", at: Point (x: 8, y: 41), size: 50, kerning : 0)
canvas.drawText(message: "CARNEGIE HALL", at: Point (x: 68, y: 98), size: 30, kerning : 0)
canvas.drawText(message: "THE DARK SIDE OF THE MOON TOUR", at: Point(x: 18, y: 568), size: 20, kerning: 0)
canvas.drawText(message: "PINK FLOYD", at: Point(x: 18, y: 508), size: 60, kerning: 0)
canvas.drawText(message: "1972", at: Point(x: 148, y: 468), size: 40, kerning: 0)
canvas.drawText(message: "MAY", at: Point(x: 73, y: 443), size: 30, kerning: 0)
canvas.drawText(message: "1st", at: Point(x: 78, y: 413), size: 30, kerning: 0)
canvas.drawText(message: "NEW", at: Point(x: 298, y: 413), size: 30, kerning: 0)
canvas.drawText(message: "YORK", at: Point(x: 288, y: 378), size: 30, kerning: 0)

let currentColorD = Color .black
canvas.textColor = currentColorD
canvas.drawText(message: "WATER · GILMOUR · MASON · WRIGHT", at: Point (x: 15, y: 15), size: 20, kerning : 0)
canvas.drawText(message: "LIVE ON STAGE", at: Point (x: 10, y: 43), size: 50, kerning : 0)
canvas.drawText(message: "CARNEGIE HALL", at: Point (x: 70, y: 100), size: 30, kerning : 0)
canvas.drawText(message: "THE DARK SIDE OF THE MOON TOUR", at: Point(x: 20, y: 570), size: 20, kerning: 0)
canvas.drawText(message: "MAY", at: Point(x: 75, y: 445), size: 30, kerning: 0)
canvas.drawText(message: "1st", at: Point(x: 80, y: 415), size: 30, kerning: 0)
canvas.drawText(message: "NEW", at: Point(x: 300, y: 415), size: 30, kerning: 0)
canvas.drawText(message: "YORK", at: Point(x: 290, y: 380), size: 30, kerning: 0)

let currentColorE = Color(hue: 355,
                          saturation: 100,
                          brightness: 65,
                          alpha: 100)
canvas.textColor = currentColorE
canvas.drawText(message: "PINK FLOYD", at: Point(x: 20, y: 510), size: 60, kerning: 0)
canvas.drawText(message: "1972", at: Point(x: 150, y: 470), size: 40, kerning: 0)
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
