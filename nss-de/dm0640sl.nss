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


scene dm0640sl.nss_MAIN
{
//‘΄¬έθΘ΅
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

//‘IπXNvgyΡtOέθ
	//₯Cxgbf
	#Cxgt@CΌ=true;

	//₯[gtOAIπAΜGameName
	$PreGameName = $GameName;
	//


}


scene dm0640sl.nss
{

	//‘V[ΜͺΙKΈLq
	$XNvgo[W = " $Revision:  $";
	$\¬Ό = ModuleFileName();
	$\ΆΌ = $SYSTEM_present_process;
	SystemInit();


//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

	SoundPlay("@dm007a",0,450,true);

	PrintBG("γwi", 30000);

	OnBG(10,"bg402021_1_§ΏόθΦ~ζζHκOΟ");
	FadeBG(0,true);

	CreateTextureSP("Gwi100", 100, -515, -485, "cg/bg/l/bg402021_1_§ΏόθΦ~ζζHκOΟ_l.jpg");

	FadeDelete("γwi", 0, null, true);



//₯IπFmCY
//¨€mCYΜΧΙΐΤimCY|Cg{Pj
//¨€mCYΜlqπM€


//‘Iπ
//	$select_fade=true;
	SetChoice02(" Go up to Noiz"," Peek at what Noiz is doing");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0641.nss";$mCYIπ4=1;}
	else if($SetChoiceSelect==1){	$GameName = "dm0642.nss";$mCYIπ4=0;}

}
