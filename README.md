<div align="center">
  <h3><b>Ruby Blog web app</b></h3>
</div>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Ruby Blog web app <a name="about-project"></a>

**Ruby Blog web apps** is a project implementing a blogging platform with four interconnected tables: Comment, User, Post, and Like. Users can create posts, comment on posts, and like posts. Each entity has attributes such as name, photo, bio, title, text, and counters for comments and likes. Associations between models are established, allowing easy retrieval of related data. The project includes custom methods to retrieve recent comments and update counters. Built using the power of Rails framework to enable efficient CRUD operations and seamless interaction with the database.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Ruby</summary>
  <ul>
    <li><a href="https://ruby.org/">Ruby</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

-**[User Management: The project includes a User model with features for creating and managing user accounts. Users can register, log in, and perform actions specific to their account.]**

-**[Post Creation: Users can create new posts with a title and text content. Posts are associated with the user who created them, allowing for easy retrieval and organization.]**

-**[Commenting System: Users can leave comments on posts, fostering engagement and discussion. Comments are associated with the post they belong to and include attributes such as the author's ID, text, and timestamps.]**

-**[Like Functionality: Users can express their appreciation for posts by liking them. Likes are associated with both the post and the user who initiated the like.]**

-**[Counters: The project incorporates counters to track the number of comments and likes for each post. These counters are automatically updated when new comments or likes are added, providing valuable insights into post popularity.]**

-**[Recent Comments: The project includes a custom method that retrieves the most recent comments for a given post. This feature allows users to view and engage with the latest discussions.]**

-**[Data Associations: The tables (Comment, User, Post, and Like) are linked through associations, enabling seamless navigation and retrieval of related data. These associations enhance the project's functionality and facilitate efficient data management.]**

-**[CRUD Operations: The project leverages the power of Ruby on Rails to perform Create, Read, Update, and Delete (CRUD) operations on the entities. This allows for easy management and manipulation of data throughout the application.]**

-**[Robust Framework: Built using the Ruby on Rails framework, the project benefits from its convention-over-configuration approach, providing a solid foundation for developing scalable and maintainable web applications.]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>



## 💻 Getting Started <a name="getting-started"></a>

To get started with this project and have a local copy and running, follow these steps:

### Prerequisites <a name="prerequisites">

In order to run this project you need:

```sh
A Computer
Code editor (VSCode,Atom etc...)
Version Control System (Git and Github)
NodeJS (https://nodejs.org/en/)
Ruby (https://www.ruby-lang.org/en/downloads/)
```

### Setup <a name="setup">

Clone this repository to your desired folder:
Example commands:

```sh
  cd my-folder
  git clone https://github.com/alexiscyber14/ruby_on_rails_blog_app.git
```

### Install <a name="install">

Install this project with:

- **install Ruby and ruby on rails framework on your computer**

### Usage <a name="usage">

- **To use this project content, you need to have ruby installed on you computer and must have prior knowledge in basic programming**

### Run tests <a name="run-tests">

To run tests:

```sh
gem intall rspec
rspec spec
```

## Authors <a name="authors">

👤 **Alexander Ssenyondo**

- GitHub: [@alexiscyber14](https://github.com/alexiscyber14)
- Instagram:[@Alexiscyber14](https://www.instagram.com/alexiscyber14/)
- LinkedIn:[@Alex_Ssenyoondo](https://www.linkedin.com/in/alex-software/)
- wellfound:[@alexiscyber14](https://angel.co/u/alexander-senyondo)

👤 **Samson**

- GitHub: [@SamTush](https://github.com/SamTush)
- LinkedIn:[@SamTush](https://www.linkedin.com/in/samsontush/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>
<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

Here are some potential future features that can be added to enhance the functionality of the classes:

-[]**User Profiles: Enhance the project by implementing user profiles, where users can customize their profile information, upload profile pictures, and provide additional details about themselves. This feature can encourage user engagement and personalization within the blogging platform.**

-[]**Social Media Integration: Integrate social media sharing functionality to allow users to share posts they find interesting or valuable on popular social media platforms. This feature can help expand the reach of the blog content and increase its visibility.**

-[]**Tagging System: Implement a tagging system that allows users to assign relevant tags to their posts. This feature enables better organization and categorization of posts, making it easier for users to discover content on specific topics of interest.**

-[]**Notifications: Develop a notification system that notifies users about new comments, likes, or interactions on their posts. This feature keeps users engaged and informed about the activity surrounding their content, fostering a sense of community and encouraging further interaction.**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, and feature requests are welcome!

Feel free to check the [project](https://github.com/alexiscyber14/ruby_on_rails_blog_app.git).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project you can give it a ⭐️.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank <a href="https://github.com/microverseinc">MICROVERSE</a> for their contribution to the material used in this project.

## License

<p>This project is <a href="/LICENSE.md">MIT</a> licensed</p>
