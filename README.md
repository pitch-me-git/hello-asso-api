# hello-asso-api

This gem makes it easier to fetch data from the API of HelloAsso.

## Install

```
gem install hello-asso-api
```


## Examples

```ruby
# Fetch an organization by its id
organization = HelloAssoApi::Organization.fetch(60)
puts organization

# Fetch an organization by its slug
organization = HelloAssoApi::Organization.fetch('planete-i-d-e-a-l')
puts organization

# Fetch the list of all organizations
# You have to specify a page id because they paginate their results
list = HelloAssoApi::Organization.fetchAll(1)
puts list

# Get the URL to process a donation
params = {
  'oid'           => 1337,
  'reference'     => CGI::escape('the-reference-of-the-donation'),
  'appId'         => 'your-api-key',
  'urlCallback'   => CGI::escape('your callback url'),
  'email'         => CGI::escape('me@example.com'), 
  'title'         => 0, # 0: Mr. - 1: Mrs
  'name'          => CGI::escape('Lastname'),
  'firstName'     => CGI::escape('Firstname'),
  'address'       => CGI::escape('Address'),
  'zipCode'       => 13337, # 5 digits
  'city'          => CGI::escape('Paris'),
  'amount'        => 400, # amount in cents of euros
  'tip'           => 100, # the tip amount to send to HelloAsso, can be zero.
  'frequency'     => 'ONCE', # 'ONCE': only one payment - 'REGULAR': a payment every month
  'dueDate'       => nil, # the debit day - only for 'REGULAR' payments
  'country'       => CGI::escape('France'),
  'urlEffectue'   => CGI::escape('http://example.com/success'), # return url of a succeeded payment
  'urlAnnule'     => CGI::escape('http://example.com/error'), # return url of a payment error
  'urlRefuse'     => CGI::escape('http://example.com/refused'), # return url of a refused payment
  'use'           => 'WEB', # The current platform of the user: 'WEB' or 'MOBILE'
  'mode'          => 'PREPROD', # Do your testing in 'PREPROD' mode and switch to 'PROD' once your website is in production
  'company'       => CGI::escape('Hodor'), # The company name of the user
  'comment'       => CGI::escape('Hodor huh huh Hodor?') # The user can leave a comment
}
url = HelloAssoApi::Donate.get_url(params)
puts url

# Then you need to redirect the user to this URL and HelloAsso will handle the rest.
# Once the payment is done and depending on if it was successful or not, there will be params to your callback URLs.
# Eg: http://example.com/success?reference=test-donation-0000002&Montant=500&ref=mfg-donation-13374242&auto=XXXXXX&trans=424242&erreur=00000&validite=1410


