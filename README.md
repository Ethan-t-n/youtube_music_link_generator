# Read Me For 🎵YouTube Music Link Generator🎵

# 🎵 Overview 🎵
Ever wanted to explore random music using a ruby program? If so, this is just the app for you! it allows users to generate randomized youtube music links that you can easily copy and paste into your browser!

## 🎵 Built With 🎵
[<img src="https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white"/>](https://www.ruby-lang.org/en/) <br>

### 🎵 Local Setup 🎵
1. Fork and clone the repo to your local machine with SSH: `git@github.com:Ethan-t-n/youtube_music_link_generator.git`.
2. Open your terminal and go into the youtube_music_link_generator directory.
3. Install gems by running `gem install google-api-client` in your terminal.
4. Change into the lib directory.
5. Register for your [YouTube API key](console.cloud.google.com). IMPORTANT: Registering for your YouTube API key instructions will be down below. 
6. Run `ruby gem install google-api-client`(Please complete registering for YouTube API Key steps down below before moving on to steps 7 and 8).
7. Run `rspec` to see test results as well as randomized link.
8. copy randomized link and paste it into your browser.

### 🎵 Registering for your YouTube API key 🎵
1. Go to the Google Cloud Console.
2. If you don't have a Google Cloud account, create one by following the prompts. Otherwise, sign in to your account.
3. Click on the project drop-down menu at the top of the page and click "New Project".
4. Give your project a name and click "Create".
5. Once your project is created, go to the API Library by clicking on the "Navigation menu" button in the upper left corner of the page, then select "APIs & Services" > "Library".
6. Search for the YouTube Data API and click on it to open its details page.
7. Click on the "Enable" button to enable the API for your project.
8. Once the API is enabled, click on the "Create Credentials" button to create your API key.
9. Select "API key" from the dropdown menu and follow the prompts to create your key.
10. Copy the API key, go into the terminal and run `export YOUTUBE_API_KEY=paste_your_api_key_in_here` 

### ❗️ Future updates ❗️
Planning on letting users generate a random link by genre of music.
