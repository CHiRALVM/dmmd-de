//<continuation number="">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}


scene dm0660sl.nss_MAIN
{
//¡´¬ÝèÈµ
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//¡IðXNvgyÑtOÝè
	//¥Cxgbf
	#Cxgt@C¼=true;

	//¥[gtOAIðAÌGameName
	$PreGameName = $GameName;
	//


}


scene dm0660sl.nss
{

	//¡V[ÌªÉK¸Lq
	$XNvgo[W = " $Revision:  $";
	$\¬¼ = ModuleFileName();
	$\¶¼ = $SYSTEM_present_process;
	SystemInit();


//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\


	PrintBG("ãwi", 30000);

	OnBG(10,"bg402031_1_§¿üèÖ~ææHê®01");
	FadeBG(0,true);

//Faflø«p¬Ó
	SoundPlay("@dm009",0,450,true);

	FadeDelete("ãwi", 0, null, true);



//¥IðFg
//¨¤gÌGðø«Â¯éig|Cg{Pj
//¨¤gÉßt­


//¡Ið
	SetChoice02(" Fight Koujaku's enemies"," Approach Koujaku");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0661_vs.nss";$gIð4=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0662_vs.nss";$gIð4=0;}



//	ClearFadeAll(1000, true);

}
