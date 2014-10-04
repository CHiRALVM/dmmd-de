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


scene dm0270.nss_MAIN
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
	$GameName = "dm0280.nss";

}


scene dm0270.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm013",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室");
	FadeBG(0,true);

	CreateTextureSP("絵背景110", 110, 0, -572, "cg/bg/l/bg104031_5_蒼葉宅自室_l.jpg");

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,400,0,1000,null,false);

	FadeDelete("絵背景110", 250, null, true);
}
I put our foreheads together one more time and lower Ren 
to the bed&.

Ren is always the same&. No matter what&, he'll be by my 
side&.

After that&, I place my tools in order and leisurely spend 
time talking with Ren about everything&.



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//※次ファイル["dm0280.nss"]


	ClearFadeAll(3000, true);
	WaitKey(3000);
}
