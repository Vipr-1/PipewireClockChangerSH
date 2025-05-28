#!/bin/bash
echo "Welcome to Pipewire Clock Changer \n What clock/sample rate do you want to set?"
echo "1: 44.1khz"
echo "2: 48khz"
echo "3: 96khz"
echo "4: 192khz"
read option

#Function that takes the option you pick
setClock(){
    arrayOfOptions=("44100" "48000" "96000" "192000") 
    chosenSetting=${arrayOfOptions[$1-1]}

    pw-metadata -n settings 0 clock.force-rate $chosenSetting
}
setClock $option
echo "Done"