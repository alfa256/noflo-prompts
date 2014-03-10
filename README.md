noflo-prompts
=============

Prompt components for noflo ( browser ).
As you may know they are all blocking until the user interacts with the dialog, so keep that in mind.
The motivation for this component pack is to lower the barrier of tinkering in noflo-ui.

Components:

Alert
------
Displays an alert.
Makes one alert per text packet from IN.
Sends true from OUT after 'OK'.

Confirm
-------
Displays a confirmation.

Makes one Confirmation per text packet from IN.
Sends true or false depending on 'OK' or 'Cancel' from OUT.

Prompt
-------
Displays a text prompt.

Makes one Prompt per text packet from IN.
Sends entered text from OUT.

Copyright 2014 Alfredo Consebola.




