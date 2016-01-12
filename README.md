# Udacitask 2.0

## Project Overview

If you’re familiar with microblogging sites, you’ll know that they usually allow you to define different types of posts like “text”, “quote”, “image”, or  “link”. All of the posts are then listed in one big stream, with different formatting depending on the type of post.

You’ve decided to keep up with the current trends, and add similar features to Udacitask. Rather than limiting users to just to-do lists, Udacitask 2.0 will allow users to create a UdaciList, which will support a variety of item types including links, events, and to-do items.

In this project, you will use your knowledge of Ruby gems and Modules to add new features to Udacitask and refactor your code to improve scalability and organization.

## Why Does This Matter?

As projects get larger, and more complex, scalability and organization can become a challenge if it's not anticipated early on. Think about how the changes you make to your code in Udacitask 2.0 will help if you choose to expand the project even further.

## Completing this Project

You should have completed all the necessary steps for finishing this project in Udacitask 2.0. Before submitting, ensure your program returns the correct values for all the sample code provided in app.rb, and meets the following requirements.

* **The Basics**: add, delete, and all methods are written and functional. All code in app.rb returns expected output.
* **Errors**: `InvalidItemType`, `IndexExceedsListSize`, and `InvalidPriorityValue` are used appropriately.
* **Modules**: Formatting methods are in a module and included as a mixin. Error classes are organized in modules and called using the `::` operator.
* **Gems**: A **minimum of 3 gems** (you can use more!) are used in the project. `Gemfile` and `Gemfile.lock` are updated appropriately.
    * **Chronic**: Use the Chronic gem to parse dates such as “In 5 weeks”
    * **Colorize**: Use the Colorize gem to colorize the priority to-do symbols ⇩⇨⇧
    * ***Gem of your choice***: Find a gem of your choice and incorporate it into Udacitask 2.0
* **Additional features**:
    * **Required**: Each item should display its item type along with the item description.
    * **Required**: `list.filter(item_type)` should display a list of items of that particular type.
    * ***Add 2 more features of your choice***: If you get stuck deciding on a new feature, here are some suggestions:
        * Creating a new item type
        * Using your third gem in an interesting way
        * Allow deletion of multiple items
        * Change the priority levels of items
* **Reflections.txt:** Describe how you used the **gem of your choice**, and the **two additional features** you added to Udacitask 2.0.

Additionally, the following requirements have been met:

* The project is submitted using GitHub, with regular commits
* The reflection has been included in the top level directory
* Code follows proper style and naming conventions

## Submitting Your Project

Before submitting your project for evaluation, we recommend that you check that each of the following is true:

* Your program runs without any errors
* You are proud of your project and its output
* You completed your project according to the instructions
* You checked your project against the [rubric]()
* When you feel ready to submit, use the blue 'Submit Project' button below!
