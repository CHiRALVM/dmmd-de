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


scene dm0160sl.nss_MAIN
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


scene dm0160sl.nss
{

	//‘V[ΜͺΙKΈLq
	$XNvgo[W = " $Revision:  $";
	$\¬Ό = ModuleFileName();
	$\ΆΌ = $SYSTEM_present_process;
	SystemInit();


//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

	SoundPlay("@dm002",0,450,true);

	PrintBG("γwi", 30000);

	OnBG(10,"bg101031_1_Z―ζΚθ HngJ");
	FadeBG(0,true);

	FadeDelete("γwi", 0, null, true);



//₯IπFg
//¨Uθ₯€
//¨ηSηO·ιig|Cg{Pj


//‘Iπ
	SetChoice02("Abschuetteln"," Zoegern");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0161.nss";$gIπ1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0162.nss";$gIπ1=1;}



//	ClearFadeAll(1000, true);

}
