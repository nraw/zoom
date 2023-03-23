# Join zoom links at a blink of an eye

## Use case

Joining zoom events straight from your terminal.

## Installation

You need to have icallBuddy installed and fuzzy finder and it needs 
```
brew install icall-buddy fzf
```

If you are using Outlook, you need to follow these instructions to get data into iCalendar

1. Open iCalendar
2. Calendar > Add Account > Microsoft Exchange

Then, you need to place the `zoom.sh` somewhere in your executable paths and make it executable.

```sh
ln zoom.sh ~/bin/zoom
chmod +x ~/bin/zoom
```

You can also install finicky.js in order to avoid opening the browser altogether.

## Usage

```
zoom
```
This will check for current events and if there are overlapping ones it will open fzf for you to select one.
In case there are no current events, it will check for the next 3 events in your calendar.

Once the event is selected, it will try to open the link written in the Location of the event.
