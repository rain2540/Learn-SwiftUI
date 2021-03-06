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

#### Section 3 : Draw the Badge Symbol

The Landmarks badge has a custom insignia in its center that’s based on the mountain that appears in the Landmarks app icon.

The mountain symbol consists of two shapes: one that represents a snowcap at the peak, and the other that represents vegetation along the approach. You’ll draw them using two partially triangular shapes that are set apart by a small gap.

#### Section 4 : Combine the Badge Foreground and Background

The badge design calls for the mountain shape to be rotated and repeated multiple times on top of the badge background.

Define a new type for rotation and leverage the ForEach view to apply the same adjustments to multiple copies of the mountain shape.

### 2.2 Animating Views and Transitions

When using SwiftUI, you can individually animate changes to views, or to a view’s state, no matter where the effects are. SwiftUI handles all the complexity of these combined, overlapping, and interruptible animations for you.

In this tutorial, you’ll animate a view that contains a graph for tracking the hikes a user takes while using the Landmarks app. Using the animation(_:) modifier, you’ll see just how easy it is to animate a view.

#### Section 1 : Add Animations to Individual Views

When you use the animation(_:) modifier on a view, SwiftUI animates any changes to animatable properties of the view. A view’s color, opacity, rotation, size, and other properties are all animatable.

#### Section 2 : Animate the Effects of State Changes

Now that you’ve learned how to apply animations to individual views, it’s time to add animations in places where you change your state’s value.
Here, you’ll apply animations to all of the changes that occur when a user taps a button and toggles the showDetail state property.

#### Section 3 : Customize View Transitions

By default, views transition on- and offscreen by fading in and out. You can customize this transition by using the transition(_:) modifier.

#### Section 4 : Compose Animations for Complex Effects

The graph switches between three different sets of data when you click the buttons below the bars. In this section, you’ll use a composed animation to give the capsules that make up the graph a dynamic, rippling transition.

## 3. App Design and Layout

### 3.1 Composing Complex Interfaces

The home screen for Landmarks shows a scrolling list of categories, with horizontally scrolling landmarks within each category. As you build this primary navigation, you’ll explore how composed views can adapt to different device sizes and orientations.

#### Section 1 : Add a Home View

Now that you have all of the views you need for the Landmarks app, it’s time to give them a home — a view to unify the views. The home view not only contains all of the other views, it also provides the means of navigating through and displaying your landmarks.

#### Section 2 Create a Categories List

The Landmarks app displays all categories in separate rows arranged in a vertical column for easier browsing. You do this by combining vertical and horizontal stacks, and adding scrolling to the list.

#### Section 3 Add Rows of Landmarks

Landmarks displays each category in a row that scrolls horizontally. Add a new view type to represent the row, then display all the landmarks for that category in the new view.

#### Section 4 Compose the Home View

The home page of the Landmarks app needs to display simple representations of landmarks before the user taps one for more details.

Reuse parts of the Landmark view you created in Creating and Combining Views to create familiar — but simpler — previews of a landmark for the category and feature views.

#### Section 5 Add Navigation Between Sections

Now that all the differently categorized landmarks are visible in the home view, the user needs a way to reach each section in the app. Use the navigation and presentation APIs to make the detail view, favorites list, and the user’s profile all navigable from the home view.

### 3.2 Working with UI Controls

In the Landmarks app, users can create a profile to express their personality. To give users the ability to change their profile, you’ll add an edit mode and design the preferences screen.

You’ll work with a variety of common user interface controls for data entry, and update the Landmarks model types whenever the user saves their changes.

#### Section 1 Display a User Profile

The Landmarks app locally stores some configuration details and preferences. Before the user edits their details, they’re displayed in a summary view that doesn’t have any editing controls.

#### Section 2 Add an Edit Mode

Users need to toggle between viewing or editing their profile details. You’ll add an edit mode by adding an EditButton to the existing ProfileHost, and then creating a view with controls for editing individual values.

#### Section 3 Define the Profile Editor

The user profile editor consists primarily of different controls that change individual details in the profile. Some items in the profile, like the badges, aren’t user-editable, so they don’t appear in the editor.

For consistency with the profile summary, you’ll add the profile details in the same order in the editor.

#### Section 4 Delay Edit Propagation

To make it so edits don’t take effect until after the user exits edit mode, you use the draft copy of their profile during editing, then assign the draft copy to the real copy only when the user confirms an edit.

## 4. Framework Integration

### 4.1 Interfacing with UIKit

SwiftUI works seamlessly with the existing UI frameworks on all Apple platforms. For example, you can place UIKit views and view controllers inside SwiftUI views, and vice versa.

This tutorial shows you how to convert the featured landmark from the home screen to wrap instances of UIPageViewController and UIPageControl. You’ll use UIPageViewController to display a carousel of SwiftUI views, and use state variables and bindings to coordinate data updates throughout the user interface.

#### Section 1 Create View to Represent a UIPageViewController

To represent UIKit views and view controllers in SwiftUI, you create types that conform to the UIViewRepresentable and UIViewControllerRepresentable protocols. Your custom types create and configure the UIKit types that they represent, while SwiftUI manages their life cycle and updates them when needed.

#### Section 2 Create the View Controller's Data Source

In a few short steps, you’ve done a lot — the PageViewController uses a UIPageViewController to show content from a SwiftUI view. Now it’s time to enable swiping interactions to move from page to page.

#### Section 3 Track the Page in a SwiftUI View’s State

To prepare for adding a custom UIPageControl, you need a way to track the current page from within PageView.

To do this, you’ll declare a @State property in PageView, and pass a binding to this property down to the PageViewController view. The PageViewController updates the binding to match the visible page.

#### Section 4 Add a Custom Page Control

You’re ready to add a custom UIPageControl to your view, wrapped in SwiftUI UIViewRepresentable view.

### 4.2 Creating a watchOS App

This tutorial gives you a chance to apply much of what you’ve already learned about SwiftUI, and — with little effort — migrate the Landmarks app to watchOS.

You’ll start by adding a watchOS target to your project, before copying over the shared data and views you created for the iOS app. With all of the assets in place, you’ll customize the SwiftUI views to display the detail and list views on watchOS.

#### Section 1 Add a watchOS Target

To create a watchOS app, start by adding a watchOS target to the project. Xcode adds groups and files for the watchOS app to your project, along with the schemes needed to build and run the app.

#### Section 2 Share Files Between Targets

With the watchOS target set, you’ll need to share some resources from the iOS target. You’ll reuse the Landmark app’s data model, some resource files, as well as any views that both platforms can display without modification.

#### Section 3 Create the Detail View

Now that the iOS target resources are in place for working on the watch app, you’ll need to create a watch-specific view for displaying landmark details. To test the detail view, you’ll create custom previews for the largest and smallest watch sizes, and make some changes to the circle view so everything fits on the watch face.

#### Section 4 Add the watchOS Map View

Now that you’ve created the basic detail view, it’s time to add a map to show the landmark’s location. Unlike CircleImage, you can’t just reuse the iOS app’s MapView. Instead, you’ll need to create a WKInterfaceObjectRepresentable structure to wrap the WatchKit map.

#### Section 5 Create a Cross-Platform List View

For the landmark list, you can reuse the rows from the iOS app, but each platform needs to present its own detail view. To support this, you’ll convert the LandmarkList view into a generic list type, where the instantiating code defines the detail view.

#### Section 6 Add the Landmarks List

Now that you’ve updated the LandmarksList view so that it works on both platforms, you can add it to the watchOS app.

#### Section 7 Create a Custom Notification Interface

Your version of Landmarks for watchOS is almost complete. In this final section, you’ll create a notification interface that displays landmark information whenever you receive a notification indicating that you are close to one of your favorite locations.

> Note
> This section only covers how to display the notification after you receive it. It doesn’t describe how to set up or send notifications.

### 4.3 Creating a macOS App

After creating a version of the Landmarks app for watchOS, it’s time to set your sights on something bigger: bringing Landmarks to the Mac. You’ll build upon everything you’ve learned so far, to round out the experience of building a SwiftUI app for iOS, watchOS, and macOS.

You’ll start by adding a macOS target to your project, and then reusing the shared data you created for the iOS app. With all of the assets in place, you’ll create SwiftUI views to display list and detail views on macOS.

#### Section 1 Add a macOS Target to the Project

Start by adding a macOS target to the project. Xcode adds a new group and set of starter files for the macOS app, along with the scheme needed to build and run the app.

#### Section 2 Share Data and Assets

Next, you’ll reuse the model and resource files from the iOS app, and share those with the macOS target.

#### Section 3 Create a Row View

With SwiftUI, you typically build your views from the bottom up, creating smaller views that you assemble into larger ones.

You’ll start by defining the layout of a single row for a list, tailored to macOS. The row contains the name of the landmark, its location, an image, and an optional marker that indicates whether the landmark is a favorite.

#### Section 4 Assemble Rows into a List

Using the row defined in the previous section, you’ll create a list that presents all of the known landmarks to the user. You limit the display to only those landmarks marked as favorites when the showFavoritesOnly property in the user data is true.

#### Section 5 Create a Filter to Manage the List

Because users can flag a landmark as a favorite, you’ll need to provide a way that lets them view just their favorites. You’ll create a filter view that uses a Toggle to provide the user with a checkbox that they can click to turn filtering on or off.

To let people quickly narrow down their list of favorite landmarks, you’ll add a Picker to create a pop-up button that lets users filter their favorites based on any categories they’ve set.

#### Section 6 Combine the List and Filter Views

Create a primary view that combines the filter and the list. Provide new state information for the filter, while binding the landmark selection to the primary view’s parent view.

#### Section 7 Prepare the Circle Image for Reuse

You can sometimes share views across platforms with only modest changes. As you build a landmark detail view for macOS, you’ll reuse the CircleImage view that you created for iOS. To handle the different layout requirements of macOS, you’ll add a parameter to control the shadow radius.

#### Section 8 Extend the Map View for macOS

Like the circle image, you’ll reuse MapView in macOS. However, the map view requires more substantial updates because its use of MapKit relies on UIKit framework integration. Using MapKit in macOS requires AppKit framework integration instead, so you’ll add a compile time directive to provide the appropriate integration for the given target.

#### Section 9 Build the Detail View

The detail view displays information about the selected landmark. You created a view like this for the iOS app, but different platforms require different approaches to data presentation.

You’ll tailor the detail view for macOS, and reuse some of the views you prepared in the previous two sections.

#### Section 10 Combine the Primary and Detail Views

Now that you’ve built all of the component views, complete the app by bringing the primary and detail views together in the content view.
