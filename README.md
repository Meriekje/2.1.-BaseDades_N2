# 2.1.-BaseDades_N2
This project involves creating a simple database model for a reduced version of YouTube. The database will store information about users, videos, channels, subscriptions, likes/dislikes, playlists, and comments.

## Database Structure

### 1. `Users` Table: 
Each user will have the following data stored:

- **Columns**:
  - Unique identifier

### 1. `Email` Table: 

- **Columns**:
  - Password
  - Username
  - Date of birth
  - Gender
  - Country
  - Postal code

### 1. `Videos` Table: 
Users can publish videos, and each video will have the following data:

Unique identifier
- **Columns**:
  - Title
  - Description
  - File size
  - Video file name
  - Duration
  - Thumbnail
  - Number of views
  - Number of likes
  - Number of dislikes
  - Video status (public, hidden, private)

  - Tags (unique identifier and tag name)
  - User who published the video
  - Date and time of publication

### 1. `Channels` Table: 
A user can create a channel, and the following data will be stored:

Unique identifier
- **Columns**:
  - Channel name
  - Description
  - Creation date

### 1. `Subscriptions` Table: 
Users can subscribe to other users' channels. This relationship will be stored to keep track of which users are subscribed to a particular channel.

### 1. `Likes and Dislikes` Table: 
Users can like or dislike a video only once. The following data will be stored:
- **Columns**:
  - User ID
  - Video ID
  - Interaction type (like or dislike)
  - Date and time of the action

### 1. `Playlists` Table: 
Users can create playlists with videos they like. Each playlist contains:

Unique identifier
- **Columns**:
  - Playlist name
  - Creation date
  - Status (public or private)

### 1. `Comments` Table: 
Users can write comments on a video. Each comment has:

Unique identifier
- **Columns**:
  - Comment text
  - Date and time of posting

### 1. `Likes and Dislikes on Comments` Table: 
Users can mark a comment as "like" or "dislike." The following data will be stored:
- **Columns**:
  - User ID
  - Comment ID
  - Interaction type (like or dislike)
  - Date and time of the action

## Model Objectives
This model aims to provide a basic structure for managing an online video system, including fundamental interactions such as publishing videos, creating channels, engaging with content through likes, dislikes, and comments, as well as creating playlists and subscriptions.
