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

#### Section 2 : Filter the List View

You can customize the list view so that it shows all of the landmarks, or just the user’s favorites. To do this, you’ll need to add a bit of state to the LandmarkList type.

State is a value, or a set of values, that can change over time, and that affects a view’s behavior, content, or layout. You use a property with the @State attribute to add state to a view.

#### Section 3 : Add a Control to Toggle the State

To give the user control over the list’s filter, you need to add a control that can alter the value of showFavoritesOnly. You do this by passing a binding to a toggle control.

A binding acts as a reference to a mutable state. When a user taps the toggle from off to on, and off again, the control uses the binding to update the view’s state accordingly.

#### Section 4 : Use an Observable Object for Storage

To prepare for the user to control which particular landmarks are favorites, you’ll first store the landmark data in an observable object.

An observable object is a custom object for your data that can be bound to a view from storage in SwiftUI’s environment. SwiftUI watches for any changes to observable objects that could affect a view, and displays the correct version of the view after a change.

#### Section 5 : Adopt the Model Object in Your Views

Now that you’ve created the UserData object, you need to update your views to adopt it as the data store for your app.

#### Section 6 : Create a Favorite Button for Each Landmark

The Landmarks app can now switch between a filtered and unfiltered view of the landmarks, but the list of favorite landmarks is still hard coded. To allow the user to add and remove favorites, you need to add a favorite button to the landmark detail view.

## 2. Drawing and Animation

### 2.1 Drawing Paths and Shapes

Users receive a badge whenever they visit a landmark in their list. Of course, for a user to receive a badge, you’ll need to create one. This tutorial takes you through the process of creating a badge by combining paths and shapes, which you then overlay with another shape that represents the location.

If you want to create multiple badges for different kinds of landmarks, try experimenting with the overlaid symbol, varying the amount of repetition, or changing the various angles and scales.

#### Section 1 : Create a Badge View

To create the badge, you’ll start by creating a Badge view that uses the vector drawing APIs in SwiftUI.

#### Section 2 : Draw the Badge Background

Use the graphics APIs in SwiftUI to draw a custom badge shape.
