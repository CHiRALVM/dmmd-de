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


scene dm3370.nss_MAIN
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
	$GameName = "dm3380.nss";

}


scene dm3370.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg301041_5_プラチナジェイル通り路地02");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//以下、合流
//===========================================


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Using almost enough strength to break my arm&, Mink dragged me back to Glitter&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※場面転換→宿泊施設へ

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(1500, true);
	Wait(1000);

//※次ファイル["dm3380.nss"]

}
