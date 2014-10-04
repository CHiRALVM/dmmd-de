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


scene dm0765.nss_MAIN
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
	$GameName = "dm0770.nss";

}


scene dm0765.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm013",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg402051_1_立ち入り禁止区域裏通り");
	FadeBG(0,true);

/*
	Zoom("@OnBG*", 0, 1500, 1500, null, true);
	Move("@OnBG*", 0, -120, -90, null, true);
	Request("@OnBG*", Smoothing);
*/

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、蓮ルートの場合のみ表示
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Seeing everyone's face gives me peace of mind&, and I find 
my body suddenly feeling heavy&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0770.nss"]

}
