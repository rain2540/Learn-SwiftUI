# Landmarks

## 1. SwiftUI Essentials

### 1.1 Creating and Combining Views

This tutorial guides you through building Landmarks — an iOS app for discovering and sharing the places you love. You’ll start by building the view that shows a landmark’s details.

To lay out the views, Landmarks uses stacks to combine and layer the image and text view components. To add a map to the view, you’ll include a standard MapKit component. As you refine the view’s design, Xcode provides real-time feedback so you can see how those changes translate into code.

#### Section 1 : Create a New Project and Explore the Canvas

Create a new Xcode project that uses SwiftUI. Explore the canvas, previews, and the SwiftUI template code.

To preview and interact with views from the canvas in Xcode, ensure your Mac is running macOS Catalina 10.15.

#### Section 2 : Customize the Text View

You can customize a view’s display by changing your code, or by using the inspector to discover what’s available and to help you write code.

As you build the Landmarks app, you can use any combination of editors: the source editor, the canvas, or the inspectors. Your code stays updated, regardless of which tool you use.

#### Section 3 : Combine Views Using Stacks

Beyond the title view you created in the previous section, you’ll add text views to contain details about the landmark, such as the name of the park and state it’s in.

When creating a SwiftUI view, you describe its content, layout, and behavior in the view’s body property; however, the body property only returns a single view. You can combine and embed multiple views in stacks, which group views together horizontally, vertically, or back-to-front.

In this section, you’ll use a vertical stack to place the title above a horizontal stack that contains details about the park.

#### Section 4 : Create a Custom Image View

With the name and location views all set, the next step is to add an image for the landmark.

Instead of adding more code in this file, you’ll create a custom view that applies a mask, border, and drop shadow to the image.

#### Section 5 : Use UIKit and SwiftUI Views Together

Now you’re ready to create a map view. You can use the MKMapView class from MapKit to render the map.

To use UIView subclasses from within SwiftUI, you wrap the other view in a SwiftUI view that conforms to the UIViewRepresentable protocol. SwiftUI includes similar protocols for WatchKit and AppKit views.

#### Section 6 : Compose the Detail View

You now have all of the components you need — the name and place, a circular image, and a map for the location.

With the tools you’ve used so far, combine your custom views to create the final design for the landmark detail view.

### 1.2 Building Lists and Navigation

With the basic landmark detail view set up, you need to provide a way for users to see the full list of landmarks, and to view the details about each location.

You’ll create views that can show information about any landmark, and dynamically generate a scrolling list that a user can tap to see a detail view for a landmark. To fine-tune the UI, you’ll use Xcode’s canvas to render multiple previews at different device sizes.

#### Section 1 : Get to Know the Sample Data

In the first tutorial, you hard-coded information into all of your custom views. Here, you’ll learn to pass data into your custom views for display.

Get started by downloading the starter project and familiarizing yourself with the sample data.
