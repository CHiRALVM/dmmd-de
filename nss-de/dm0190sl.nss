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


scene dm0190sl.nss_MAIN
{
$TEXTBOX_TYPE="C";

	if($PreGameName=="dm0190_vs.nss"){
	}else{
	CreateTxtinEffect("@",4000);
	CreateTxtinEffect("mCY",4000);
	RMScaningSet();
	RMScaningCSet("t");
	RMDefaultStatusSet();
	RMDControlSet();
	}

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


scene dm0190sl.nss
{

	//‘V[ΜͺΙKΈLq
	$XNvgo[W = " $Revision:  $";
	$\¬Ό = ModuleFileName();
	$\ΆΌ = $SYSTEM_present_process;
	SystemInit();


//\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

	SoundPlay("@dm008",0,450,true);//Ύ

	PrintBG("γwi", 30000);

	CreateTextureSP("Gκ", 1310, -512, -302, "cg/ev/l/ev960ETMhLν¬Λi_l.jpg");
	Request("Gκ", Smoothing);
	Zoom("Gκ", 0, 550, 550, Dxl3, false);

	FadeDelete("γwi", 0, null, true);

//₯Iπi@jF
//¨€K[h·ι
//¨€@πέ€i@|Cg{Pj

//‘Iπ
	$select_fade=true;
	SetChoice02(" Guard"," Protect Ren");
	WaitChoice02();
	
	if($SetChoiceSelect==0){		$GameName = "dm0191_vs.nss";$@Iπ1=0;}
	else if($SetChoiceSelect==1){	$GameName = "dm0192_vs.nss";$@Iπ1=1;}

}
