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

#### Section 2 : Create the Row View

The first view you’ll build in this tutorial is a row for displaying details about each landmark. This row view stores information in a property for the landmark it displays, so that one view can display any landmark. Later, you’ll combine multiple rows into a list of landmarks.

#### Section 3 : Customize the Row Preview

Xcode’s canvas automatically recognizes and displays any type in the current editor that conforms to the PreviewProvider protocol. A preview provider returns one or more views, with options to configure the size and device.

You can customize the returned content from a preview provider to render exactly the previews that are most helpful to you.

#### Section 4 : Create the List of Landmarks

When you use SwiftUI’s List type, you can display a platform-specific list of views. The elements of the list can be static, like the child views of the stacks you’ve created so far, or dynamically generated. You can even mix static and dynamically generated views.

#### Section 5 : Make the List Dynamic

Instead of specifying a list’s elements individually, you can generate rows directly from a collection.

You can create a list that displays the elements of collection by passing your collection of data and a closure that provides a view for each element in the collection. The list transforms each element in the collection into a child view by using the supplied closure.

#### Section 6 : Set Up Navigation Between List and Detail

The list renders properly, but you can’t tap an individual landmark to see that landmark’s detail page yet.

You add navigation capabilities to a list by embedding it in a NavigationView, and then nesting each row in a NavigationLink to set up a transtition to a destination view.

#### Section 7 : Pass Data into Child Views

The LandmarkDetail view still uses hard-coded details to show its landmark. Just like LandmarkRow, the LandmarkDetail type and the views it comprises need to use a landmark property as the source for their data.

Starting with the child views, you’ll convert CircleImage, MapView, and then LandmarkDetail to display data that’s passed in, rather than hard-coding each row.

#### Section 8 : Generating Previews Dynamically

Next, you’ll add code to the LandmarkList_Previews preview provider to render previews of the list view at different device sizes. By default, previews render at the size of the device in the active scheme. You can change the preview device by calling the previewDevice(_:) modifier method.

### 1.3 Handling User Input

In the Landmarks app, a user can flag their favorite places, and filter the list to show just their favorites. To create this feature, you’ll start by adding a switch to the list so users can focus on just their favorites, and then you’ll add a star-shaped button that a user taps to flag a landmark as a favorite.

#### Section 1 : Mark the User’s Favorite Landmarks

Begin by enhancing the list to show users their favorites at a glance. Add a star to each LandmarkRow that shows a favorite landmark.
