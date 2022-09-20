# Medium App Clone

<img src="/docs_assets/medium_logo.png" alt="medium_logo" width="150"/>

Medium app clpne developped with Dart/Flutter framework, getx for state management, used dummy data to showcase (for now at least) 

# 📱Screen shots
<p align="left"">

<img src="/docs_assets/screenshots/flutter_01.png" alt="screenshot" width="250"/>
<img src="/docs_assets/screenshots/flutter_02.png" alt="screenshot" width="250"/>
<img src="/docs_assets/screenshots/flutter_03.png" alt="screenshot" width="250"/>
<img src="/docs_assets/screenshots/flutter_04.png" alt="screenshot" width="250"/>
</p>

# 📝 Tasks

- [x] Bottom navigation bar
- [ ] Home page
  - [x] Header
    - [x] Page title
    - [x] icon
  - [x] Tab bar with `TabModel()`
    - [x] Fixed / Sticky tab bar on scroll with possibility to navigate
      - [ ] Fixed only on down scroll, while on top's will display the header again
    - [x] Gradient effect on corners
    - [ ] Plus icon will show different view than other tag
  - [x] Divider
  - [x] Floating action button
  - [x] Articles tab bar view
    - [ ] Shimmer loading effect
    - [ ] Lazy articles loading
  - [x] Articles card from `ArticleModel()`
    - [x] Author informations (profile, image, author)
    - [x] Main informations (title, article image)
      - [ ] Community name if it exists for article
    - [x] Dynamic date of publish, date of last read
    - [x] Action Icons with their enum
      - [ ] add article to bookmark
      - [ ] Remove article from view action
      - [ ] Pop up menu actions
  - [x] Articles card for '**For you**' tag only
    - [x] With tag chips
    - [x] With reason to show as **'based on history '**, **'you might like'**...
  - [x] Articles card for other tags
    - [x] Based on **'For you'** article card
  - [x] Circular refresh indicator on swipe
- [x] Search page
  - [x] Header inherited fom home page's
  - [x] Search Bar
  - [x] Tags chips scroll view
    - [x] Chip inherited from home's article cards
    - [x] Able to react `on(Tap , PanDown , PanCancel , PanEnd)`
  - [x] Trending subtitle
  - [x] Trending card articles
    - [x] Dynamic enumerations for articles
    - [x] Author informations inherited from home's article card
    - [x] Main informations inherited from home's article card
    - [x] Date informations inherited from home's article card
    - [ ] shimmer effect
  - [x] Highlights from all corners scroll view
    - [x] Title / Subtitle
    - [x] Highlight card from `HighlightModel()`
      - [x] Header image
      - [x] Title
      - [x] Corner / Community
  - [ ] People to follow
    - [ ] Profile image
    - [ ] Author
    - [ ] Bio
    - [ ] Follow button
- [ ] Bookmarks page
- [ ] User profile page
- [ ] Add article page
- [ ] Choose tags page
- [ ] notification page
- [ ] Complete reading over context notification





# 📈 Usage
First, make sure you have at least `Flutter v3.3` and `Dart v2.16.0`
Then run this in the Cmd (Command line)

```
git clone https://github.com/anasfik/medium_app_clone.git
cd medium_app_clone
flutter get packages
flutter run
```
# ✏️ Contribute
You can be a part of this project by contributing / helping in this project
every type of contribution are welcome in this project from : 
 - Using the app and declaring issues, bugs, features 
 - Correcting spells and bad code syntax
 - Making things reactive like hover / tap effects, search bar reacts
 - Refactoring code
 - Add more widgets, screens if you can
 - Doing missing tasks on the tasks list
 - Writing a feature
 - Changing the icons to a lighter one, cause ``Icon`` in flutter aren't light (you can use svg, or a library) 
 - Linking to a real api ( I know this is my job and I will do it inchallah )
 - Or pretty everything else :)

