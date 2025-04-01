SELECT u.username, c.name FROM users u JOIN channels c USING(id_user);
SELECT v.title, u.username FROM videos v JOIN users u USING (id_user) WHERE v.status LIKE 'public';
SELECT v.title, t.tag_name FROM videos v JOIN video_tag vt USING(id_video) JOIN tag t USING (id_tag);
SELECT v.title, u.username, v.likes, v.view_quant FROM videos v JOIN users u USING (id_user) ORDER BY v.likes DESC LIMIT 5;

SELECT ch.name AS channel_name, 
	ch.id_channel,
    COUNT(s.id_subscriber) AS total_subscribers
FROM channels ch
LEFT JOIN subscriptions s ON ch.id_channel = s.id_channel
GROUP BY ch.id_channel, ch.name
HAVING COUNT(s.id_subscriber) < 10
ORDER BY total_subscribers DESC;

