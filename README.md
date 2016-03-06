# eLOD

BEFORE running the compose file 

You must create to your / directory the directories
/data-drupal
/mysql-drupal 
and give the read+write permissions for user www-data 

i.e
mkdir drupal_data
chmod -R 777 drupal_data (must change later for security reasons to the proper ones)
chown -R www-data:www-data /drupal_data

RUN the compose file with 
docker-compose up -d 
It will create
1)viruoso container 
2)mysql container with a database eloddrupal
3)drupal container (linked to mysql)
and will link drupal data and mysql data with external (host) directories 

you may inspect the network with 
docker network ls 
and 
docker network inspect the_name_ of_ the_ network
MySQL container ip will appear also there and may be used during the first DRUAL installation  
