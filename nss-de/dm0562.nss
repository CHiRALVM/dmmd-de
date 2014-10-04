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


scene dm0562.nss_MAIN
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
	$GameName = "dm0570.nss";

}


scene dm0562.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg106021_5_廃ビル部屋");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※「コイルを手に取る」を選んだ場合
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
It seems like neither my Coil or Ren suffered any damage&.

I first put my Coil back on my arm again&.

{	//★コイルその他お知らせ（着信履歴）
	CreateSE("coilsound_call","se物体_コイル_システムメール新着");
	MusicStart("coilsound_call",0,700,0,1000,null,false);
}
An icon flashes repeatedly to alert me of unread messages&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm0570.nss"]


//	ClearFadeAll(1000, true);

}
