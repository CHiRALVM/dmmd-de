//<continuation number="0">
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


scene dm5390.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//■選択肢スクリプト及びフラグ設定
	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5390sl.nss";

}


scene dm5390.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、合流
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 200, 0, null, true);

	Shake("絵背景", 300, 0, 50, 0, 0, 500, Dxl1, false);
}
A man in a black parka knees me in the gut and I double 
over in pain&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5390sl.nss"]

}
