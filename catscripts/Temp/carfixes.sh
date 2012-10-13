#!/bin/bash

python category.py move -from:'Cars' -to:'Honda Accord' -match:'[aA]ccord' -summary:'Bot - moving pages from [[:Category:Cars]] to subcategory [[:Category:Honda Accord]] because keyword "Accord" or "accord" matches. Report any problems [[User talk:I am a bot|here]]. (Cron job carfixes 1)'

python category.py move -from:'Cars' -to:'Honda Civic' -match:'[cC]ivic' -summary:'Bot - moving pages from [[:Category:Cars]] to subcategory [[:Category:Honda Civic]] because keyword "Civic" or "civic" matches. Report any problems [[User talk:I am a bot|here]]. (Cron job carfixes 2)'

python category.py move -from:'Cars' -to:'Chevrolet Camaro' -match:'[cC]amaro' -summary:'Bot - moving pages from [[:Category:Cars]] to subcategory [[:Category:Chevrolet Camaro]] because keyword "Camaro" or "camaro" matches. Report any problems [[User talk:I am a bot|here]]. (Cron job carfixes 3)'

python category.py move -from:'Cars' -to:'Chevrolet Lumina' -match:'[lL]umina' -summary:'Bot - moving pages from [[:Category:Cars]] to subcategory [[:Category:Chevrolet Lumina]] because keyword "Lumina" or "lumina" matches. Report any problems [[User talk:I am a bot|here]]. (Cron job carfixes 4)'

python category.py move -from:'Cars' -to:'Pontiac Sunfire' -match:'[sS]unfire' -summary:'Bot - moving pages from [[:Category:Cars]] to subcategory [[:Category:Pontiac Sunfire]] because keyword "Sunfire" or "sunfire" matches. Report any problems [[User talk:I am a bot|here]]. (Cron job carfixes 5)'