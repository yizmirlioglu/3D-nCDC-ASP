

% Spatial objects are possibly disconnected objects in 3D space
% 1:sedimentary rock   2:fragmented marsh   3:volcanic vent   4:kelp forest   5:fungi culture

object(1..10).

% 27 tiles of 3D-nCDC
alltiles(swm).  alltiles(sm).  alltiles(sem).  alltiles(wm).  alltiles(om). alltiles(em).  alltiles(nwm).  alltiles(nm).  alltiles(nem).
alltiles(swb).  alltiles(sb).  alltiles(seb).  alltiles(wb).  alltiles(ob). alltiles(eb).  alltiles(nwb).  alltiles(nb).  alltiles(neb).
alltiles(swa).  alltiles(sa).  alltiles(sea).  alltiles(wa).  alltiles(oa). alltiles(ea).  alltiles(nwa).  alltiles(na).  alltiles(nea).


% Define network of constraints in 3D-nCDC

relation(2,1,swb).  relation(2,1,seb).  
relation(3,1,ea).  relation(3,1,sea).
relation(3,2,nea).
relation(4,3,nb).  relation(4,3,seb).
relation(5,4,sm).
relation(5,2,eb).

% Replicate

relation(7,6,swb).  relation(7,6,seb).  
relation(8,6,ea).  relation(8,6,sea).
relation(8,7,nea).
relation(9,8,nb).  relation(9,8,seb).
relation(10,9,sm).
relation(10,7,eb).


% Infer Unknown Relation

toinfer(5,1).
toinfer(10,6).
