# team2-final-project
Perform the following commands in the finalProject folder in order to get the appropriate gems:

```
bundle install
yarn install --check-files
curl --compressed -o- -L https://yarnpkg.com/install.sh | bash
```


If you would like to start with a fresh database, run the following commands in the terminal:
```
rails db:drop
rails db:migrate
rails db:schema:load
rails db:seed
```


To view the web application run `rails server` and open "localhost:3000" in your browser. To end the session, hit "Ctrl-C" in the terminal window.

Admin Account Info:
Email: admin@admin.com
Password: adminpassword
