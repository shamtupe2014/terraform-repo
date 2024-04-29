import boto3

console = boto3.session.Session(profile_name="default")
iam = console.resource('iam')

for users in iam.users.all():
    print(users.name)

