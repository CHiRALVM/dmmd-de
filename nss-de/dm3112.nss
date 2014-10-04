//<continuation number="20">
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


scene dm3112.nss_MAIN
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
	$GameName = "dm3120.nss";

}


scene dm3112.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(0,true);

	St("C",740, @0,@0,"stミンク_通常_angry2");
	FadeSt("C",0,true);

	FadeDelete("上背景", 0, null, true);

//===========================================
//「行き先を聞く」の場合
//===========================================

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/1200010a01">
"&.&.&.Where are we going?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_足音_歩く06");
	MusicStart("SE01",0,700,0,600,null,false);

	DeleteAllSt(200,true);

	Wait(1000);

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,600,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Mink ignores my half-asleep question and leaves the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE03","se物体_ベッド_寝る01");
	MusicStart("SE03",0,700,0,1000,null,false);

	FwPro("fw蒼葉_通常_angry",2100,"fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/1200020a01">
"Ah&, wait! &.&.&.Ren&, let's go!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3120.nss"]

}
