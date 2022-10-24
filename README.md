# slack_stack

Scaling your startup with the power of Open Source

## Step Two

You did it! You have made your app. But you notice some issues:

- People cannot chat with it
- None of the chat messages are saved

It sounds like you need to store these messages. Maybe somewhere centralised so that multiple users can run their app and query for messages.

This sounds like a job for... PostgreSQL!

## Connecting to PostgreSQL

1. `flutter pub run orm generate`
2. `flutter pub run build_runner build --delete-conflicting-outputs`
3. Add your Service URI to the `DATABASE_URL` in the `.prismarc` file
