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


scene dm1290sl.nss_MAIN
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


scene dm1290sl.nss
{

	//¡V[ÌªÉK¸Lq
	$XNvgo[W = " $Revision:  $";
	$\¬¼ = ModuleFileName();
	$\¶¼ = $SYSTEM_present_process;
	SystemInit();


//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

	SoundPlay("@dm008",0,450,true);

	PrintBG("ãwi", 30000);

	OnBG(10,"bg303031_5_ây{Ý³ôÌ®");
	FadeBG(0,true);

	FadeDelete("ãwi", 0, null, true);


//¥IðFg
//¨¤gÌrð­­ÍÞig|g{Pj
//¨¤¼Ìû@ðl¦é


//¡Ið
	SetChoice02(" Hold onto Koujaku's arm tightly"," Think of some other way");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm1291.nss";$gIð7=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm1292.nss";$gIð7=0;}

}
