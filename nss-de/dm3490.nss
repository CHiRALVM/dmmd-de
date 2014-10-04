//<continuation number="10">
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


scene dm3490.nss_MAIN
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
	$GameName = "dm3500.nss";

}


scene dm3490.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg304112_5_東江タワー中ホール扉前");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Throughout the floor I see nothing but an endless white 
hallway lined by a couple of rooms&, and then a door at 
the end of it&.

Speaking of which&, isn't there any security here?

The hallway is as silent as death&.
And I don't see any signs of anyone chasing after us&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fwミンク_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/9000010a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Mink silently gazes at the door&, inching closer to it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se物体_ドア東江の間_扉開く01");
//	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE01","se物体_ドア東江自動_扉開く01");
	MusicStart("SE01",0,700,0,600,null,false);

	Wait(300);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	DrawTransition("絵色白", 1000, 0, 1000, 100, null, "cg/data/slide_06_00_1.png", true);

	Wait(2000);

//※次ファイル["dm3500.nss"]

}
