# 2.1.-BaseDades_N2
This project involves creating a simple database model for a reduced version of YouTube. 
The database will store information about users, videos, channels, subscriptions, likes/dislikes, playlists, and comments.

## Database Structure

### 1. `users` Table: 
Each user will have the following data stored:

- **Columns**:
  - id_user(Primary key): Unique auto-incremented identifier for each user.
  - email: Email address of the user.
  - password: User's password.
  - username: The user's chosen nickname.
  - date_birth: Their date of birth.
  - sex: The sex identity of the user, which can be 'Man', 'Woman', or 'No binary'.
  - country: Name of the country where the user lives.
  - postal_code: Postal code from where the user lives.


### 2. `videos` Table: 
Users can publish videos, and each video will have the following data:

- **Columns**:
  - id_video (Primary key): Unique auto-incremented identifier for each video.
  - title: Title of the video.
  - description: A brief description of the video content.
  - size: Size of the video file (in bytes).
  - name_file: Name of the video file.
  - duration: Duration of the video in seconds.
  - thumbnail: File name for the video thumbnail.
  - view_quant: Number of views the video has received.
  - likes: Number of likes the video has received.
  - dislikes: Number of dislikes the video has received.
  - status: The visibility status of the video, which can be 'public', 'hidden', or 'private'.
  - published: Date and time when the video was published.
  - id_user (Foreign Key): Reference to the users table, indicating the user who uploaded the video.


### 3. `tags` Table:
Stores tags that categorize videos. Each tag can be assigned to multiple videos.

- **Columns**:
  - id_tag (Primary key): Unique auto-incremented identifier for each tag.
  - tag_name: The name of the tag, such as 'Music', 'Education', etc.

 
### 4. `video_tags` Table:
Establishes a many-to-many relationship between videos and tags, linking multiple tags to videos.

- **Columns**:
  - id_tag (Foreign Key): Reference to the tags table.
  - id_video (Foreign Key): Reference to the videos table.


### 5. `channels` Table: 
A user can create a channel, and the following data will be stored:

- **Columns**:
  - id_channel (Primary key): Unique auto-incremented identifier for each channel.
  - id_user (Foreign Key): Reference to the users table, indicating the user who owns the channel.
  - name: The name of the channel.
  - description: A brief description of the channel's content.
  - created_at: Date and time when the channel was created.


### 6. `subscriptions` Table: 
Users can subscribe to other users' channels. This relationship will be stored to keep track of which users are subscribed to a particular channel.

- **Columns**:
  - id_subscriber (Foreign Key): Reference to the users table, indicating the user who is subscribing.
  - id_channel (Foreign Key): Reference to the channels table, indicating the channel the user subscribed to.
  - subscribed_at: Date and time when the user subscribed to the channel.

### 7. `video_reactions` Table: 
Users can like or dislike a video only once. The following data will be stored:

- **Columns**:
  - id_video (Foreign Key): Reference to the videos table, indicating the video that received the reaction.
  - id_user (Foreign Key): Reference to the users table, indicating the user who reacted to the video.
  - reaction: The type of reaction ('like' or 'dislike').
  - reacted_at: Date and time when the reaction was made.


### 8. `playlists` Table: 
Users can create playlists with videos they like. Each playlist contains:

- **Columns**:
  - id_playlist (Primary key): Unique auto-incremented identifier for each playlist.
  - id_user (Foreign Key): Reference to the users table, indicating the user who created the playlist.
  - name: The name of the playlist.
  - description: A brief description of the playlist.
  - created_at: Date and time when the playlist was created.
  - status: Visibility status of the playlist ('public' or 'private').

    
### 9. `playlist_videos` Table
Establishes a many-to-many relationship between playlists and videos, linking multiple videos to playlists and the same video to multiple playlists.

- **Columns**:
  - id_playlist (Foreign Key): Reference to the playlists table.
  - id_video (Foreign Key): Reference to the videos table.
 

### 10. `comments` Table: 
Stores comments made by users on videos.

- **Columns**:
  - id_video (Foreign Key): Reference to the videos table, indicating the video being commented on.
  - id_user (Foreign Key): Reference to the users table, indicating the user who commented on the video.
  - text: The content of the comment.
  - commented_at: Date and time when the comment was made.


### 11. `comment_reactions` Table
Stores reactions (likes and dislikes) to comments made by users.

- **Columns**:
  - id_comment (Foreign Key): Reference to the comments table, indicating the comment being reacted to.
  - id_user (Foreign Key): Reference to the users table, indicating the user who reacted to the comment.
  - reaction: The type of reaction ('like' or 'dislike').
  - reacted_at: Date and time when the reaction was made.


## Model Objectives
This model aims to provide a basic structure for managing an online video system, including fundamental interactions such as publishing videos, creating channels, engaging with content through likes, dislikes, and comments, as well as creating playlists and subscriptions.
