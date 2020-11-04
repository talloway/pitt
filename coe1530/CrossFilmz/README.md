# CrossFilmz
## Instructions for running local server
* Package prerequisites: Node.js, Yarn, Python
* Install Flask on machine: `pip install flask`
* Export `FLASK_APP` environment variable
  * Windows: `C:\path\to\app>set FLASK_APP=main.py`
  * Powershell: `PS C:\path\to\app> $env:FLASK_APP = "main.py"`
  * Linux: `export FLASK_APP=main.py`

* In one terminal session, start frontend server: `C:\CrossFilmz\crossfilmz-app> yarn start`
* In another session, start backend server: `C:\CrossFilmz\crossfilmz-app> yarn start-app`
* **If there are any instances of `ImportError`, run `pip install <module-name>` and rerun**

## Instructions for setting up and running testing frameworks
### Backend
* Install pytest on machine: `pip install -U pytest`
* Check that pytest is version `5.x.y`: `pytest --version`
* Run tests using [standard test discovery rules](https://docs.pytest.org/en/stable/goodpractices.html#test-discovery): `pytest`
  * Note: tests will be run in current working directory and all subdirectories

### Frontend
#### Selenium is a chrome extension to test the functionality of a webpage
* Available here: https://chrome.google.com/webstore/detail/selenium-ide/mooikfkahbdckldjjndioackbalphokd
* Open Selenium from your browser
* Click `Open an existing project`
* Select `test_frontend.side`
* Click `Run All Tests` or `Ctrl+Shift+R`
