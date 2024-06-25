
/*recommended amounts of Vitamin A for the four roles*/ 

/*roles(role,Nutrients,amount(microgram))*/
man(man,vitaminA,700). /*man are recommended to intake 600 vitaminA a day*/
man(man,vitaminB,1000).
man(man,vitaminE,4000).
woman(woman,vitaminA,600).
woman(woman,vitaminB,800).
woman(woman,vitaminE,3000).
pregnantWoman(pregnantWoman,vitaminA,100).
pregnantWoman(pregnantWoman,vitaminB,400).
pregnantWoman(pregnantWoman,vitaminE,22000).
lactatingWoman(breastfeedingWomen,vitaminA,400).
lactatingWoman(breastfeedingWomen,vitaminB,500).
lactatingWoman(breastfeedingWomen,vitaminC,19000).


/*fact examples of symptoms*/ 

/*symptoms of vitamin deficiency*/
symptoms(nightBlindness,vitaminA). /*nightblindness is a symptoms of lack of vitaminA*/
symptoms(dryEyeSyndrome,vitaminA).
symptoms(drySkin,vitaminA).
symptoms(weak_Immune,vitaminA).
symptoms(hairLoss,vitaminA).
symptoms(nailBroken,vitaminA).
symptoms(leukoplakia,vitaminA).
symptoms(fatigue,vitaminB).
symptoms(paleSkin,vitaminB).
symptoms(headache,vitaminB).
symptoms(mouthUlcers,vitaminB).
symptoms(depression,vitaminB).
symptoms(lethargy,vitaminB).
symptoms(visionproblems,vitaminE).
symptoms(muscleweakness,vitaminE).
symptoms(lossofbodymovementcontrol,vitaminE).
symptoms(lossfeelinginarmsandlegs,vitaminE).

/*fact examples of foods which supply vitamin a*/
vitamin(vitaminA,liver). /*vitaminA supplies vitamin to liver*/
vitamin(vitaminA,fish).
vitamin(vitaminA,dairyproduct).
vitamin(vitaminA,egg).
vitamin(vitaminB,broccoli).
vitamin(vitaminB,milk).
vitamin(vitaminB,wholegrainbread).
vitamin(vitaminE,greenvegetables).
superNutrients(vitaminA,carrot).
superNutrients(vitaminA,pumpkin).
superNutrients(vitaminB,liver).
superNutrients(vitaminB,fruits).
superNutrients(vitaminB,nuts).
superNutrients(vitaminE,nuts).
superNutrients(vitaminE,plantoils).
minerals(vitaminB,sprouts).
minerals(vitaminB,plainyoghurt).
minerals(vitaminB,mushroom).
minerals(vitaminE,spinach).


/*rules for proposed system*/
role(Role,Nutrients,Amount):-
man(Role,Nutrients,Amount);
woman(Role,Nutrients,Amount);
pregnantWoman(Role,Nutrients,Amount);
lactatingWoman(Role,Nutrients,Amount).

nutrients(Symptoms,Nutrients):-
symptoms(Symptoms,Nutrients).

foods(Nutrients,Foods):-
vitamin(Nutrients,Foods);
superNutrients(Nutrients,Foods);
minerals(Nutrients,Foods).