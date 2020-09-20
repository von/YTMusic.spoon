# [docs](index.md) » YTMusic
---

Works by sending key events to the app, so if the user interface changes,
that will break this app.

To see all the keyboard shortcuts that YTMusic.app has, use '?' in the app.

## API Overview
* Functions - API calls offered directly by the extension
 * [bindHotKeys](#bindHotKeys)
 * [debug](#debug)
 * [init](#init)
 * [nextTrack](#nextTrack)
 * [playPause](#playPause)
 * [postEvent](#postEvent)
 * [previousTrack](#previousTrack)
 * [skipAhead](#skipAhead)
 * [skipBack](#skipBack)
 * [toggleMute](#toggleMute)
 * [volumeDown](#volumeDown)
 * [volumeUp](#volumeUp)

## API Documentation

### Functions

| [bindHotKeys](#bindHotKeys)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:bindHotKeys(table)`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | The method accepts a single parameter, which is a table. The keys of the table                                                                     |
| **Parameters**                              | <ul><li>table - Table of action to key mappings</li></ul> |
| **Returns**                                 | <ul><li>YTMusic object</li></ul>          |

| [debug](#debug)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:debug(enable)`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Enable or disable debugging                                                                     |
| **Parameters**                              | <ul><li>enable - Boolean indicating whether debugging should be on</li></ul> |
| **Returns**                                 | <ul><li>Nothing</li></ul>          |

| [init](#init)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:init()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Initializes a YTMusic                                                                     |
| **Parameters**                              | <ul><li>None</li></ul> |
| **Returns**                                 | <ul><li>YTMusic object</li></ul>          |

| [nextTrack](#nextTrack)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:nextTrack()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Advance to next track.                                                                     |
| **Parameters**                              | <ul><li>* None</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

| [playPause](#playPause)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:playPause()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Play or pause.                                                                     |
| **Parameters**                              | <ul><li>* None</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

| [postEvent](#postEvent)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:postEvent`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Post the event hs.eventtap.event to the YTMusic application.                                                                     |
| **Parameters**                              | <ul><li>* event: hs.eventtap.event to post</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

| [previousTrack](#previousTrack)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:previousTrack()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Rewind to begining of current track or previous track if already at begining of                                                                     |
| **Parameters**                              | <ul><li>* None</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

| [skipAhead](#skipAhead)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:skipAhead()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Skip ahead 10 seconds.                                                                     |
| **Parameters**                              | <ul><li>* None</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

| [skipBack](#skipBack)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:skipBack()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Skip back 10 seconds.                                                                     |
| **Parameters**                              | <ul><li>* None</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

| [toggleMute](#toggleMute)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:toggleMute()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Toggle the mute state of the application.                                                                     |
| **Parameters**                              | <ul><li>* None</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

| [volumeDown](#volumeDown)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:volumeDown()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Decrease the volume in the app.                                                                     |
| **Parameters**                              | <ul><li>* None</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

| [volumeUp](#volumeUp)         |                                                                                     |
| --------------------------------------------|-------------------------------------------------------------------------------------|
| **Signature**                               | `YTMusic:volumeUp()`                                                                    |
| **Type**                                    | Function                                                                     |
| **Description**                             | Increase the volume in the app.                                                                     |
| **Parameters**                              | <ul><li>* None</li></ul> |
| **Returns**                                 | <ul><li>* Nothing</li></ul>          |

