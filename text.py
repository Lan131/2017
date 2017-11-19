
import twilio
from twilio.rest import Client

# Find these values at https://twilio.com/user/account
account_sid = "###"
auth_token = "###"

client = Client(account_sid, auth_token)

client.api.account.messages.create(
    to="+13143194492",
    from_="+19473334361",
    body="Hello there from python!")
