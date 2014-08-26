" Convert Column 2 from commentary source reference to a URN

" The Anger of Achilles
%s/^"\(.\{-\}\)","AA /"\1","urn:cts:ahcip:LeonardMuellner.TheAngerOfAchilles:/

" The Best of the Achaeans
%s/^"\(.\{-\}\)","BA /"\1","urn:cts:ahcip:GregoryNagy.TheBestOfTheAchaeans:/

" Hippota Nestor
%s/^"\(.\{-\}\)","HN /"\1","urn:cts:ahcip:DouglasFrame.HippotaNestor:/

" Homer The Classic
%s/^"\(.\{-\}\)","HC /"\1","urn:cts:ahcip:GregoryNagy.HomerTheClassic:/

" Homer The Preclassic
%s/^"\(.\{-\}\)","HPC /"\1","urn:cts:ahcip:GregoryNagy.HomerThePreclassic:/

" The Meaning of Homeric EYXOMAI
%s/^"\(.\{-\}\)","ME /"\1","urn:cts:ahcip:LeonardMuellner.TheMeaningOfHomericEYXOMAI:/

" The Myth of Return
%s/^"\(.\{-\}\)","MR /"\1","urn:cts:ahcip:DouglasFrame.TheMythOfReturn:/

" Pindar's Homer
%s/^"\(.\{-\}\)","PH /"\1","urn:cts:ahcip:GregoryNagy.PindarsHomer:/


" Do not delete the following line
:wq
