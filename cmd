pip install -U selenium
pip install behave
pip install behave-html-formatter
pip install webdriver-manager

run test
behave -f html -o behave-report.html  --tags=signin
behave -f html -o behave-report.html  --tags=forgot_password
behave -f html -o behave-report.html  --tags=signup