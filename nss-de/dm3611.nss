//<continuation number="60">
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


scene dm3611.nss_MAIN
{
$TEXTBOX_TYPE="暴露";

	MinkSparksDropCheck();

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

	#bg204031_0_暴露ミンク倉庫個室=true;
	#bg204021_0_暴露ミンク倉庫天井=true;

	//▼念のためアンロック
	SparksDropDelete(0);
	Request("@EFWIN/SE*", UnLock);
	Request("@EFWIN/プロセス", UnLock);
	Request("@EFWIN/ミンクトラウマ", UnLock);
	Request("@EFWIN/絵*", UnLock);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	SparksDropDelete(0);
	$GameName = "dm3612.nss";

}


scene dm3611.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――

//あきゅん「演出：連結部分、全体的に調整」

/*
	PrintBG("上背景", 30000);

	OnBG(10,"bg204021_0_暴露ミンク倉庫天井");
	FadeBG(0,true);

	CreateTextureEX("絵背景効果", 100, Center, Middle, "cg/bg/bg204021_0_暴露ミンク倉庫天井.jpg");
	Fade("絵背景効果", 0, 500, null, true);
	SetBlur("絵背景効果", true, 3, 200, 200, false);

	Zoom("絵背景効果", 0, 1500, 1500, null, true);

//	MoveFTP1("@絵背景効果",3000,10,7);

//◆演出：火の粉
//※ＳＥ：火の粉
//おがみ：前シーンから場所が変わって火の粉は消えてると思う。千代子に確認済み
	SparksDropDelete(0);

	CreateSE("SE01","se擬音_精神_導入01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Zoom("絵背景効果", 3500, 1000, 1000, Dxl1, false);
	FadeDelete("上背景", 2000, null, true);

	Wait(500);

	Fade("絵背景効果", 1500, 0, Axl1, true);

//	MoveFTP1stop();
	Delete("絵背景効果");
*/

	PrintGO("上背景", 4900);

//★超速対応
	Request("@EFWIN/プロセス", Start);
	MusicStart("@EFWIN/SE11",1000,500,0,800,null,true);

	OnBG(10,"bg204011_3_暴露ミンク故郷草原炎上");
	FadeBG(0,true);
	FadeDelete("上背景", 0, null, true);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1100010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@EFWIN/SE*", 2500, 0, null);
	CreateColorEX("絵色暗転上", 19900, "000000");
	Fade("絵色暗転上", 2000, 1000, null, true);

	PrintGO("上背景", 20000);
	CreateColorSP("絵色暗転", 1000, "000000");

	OnBG(10,"bg204021_0_暴露ミンク倉庫天井");
	FadeBG(0,true);

	SparksDropDelete(0);
	Request("@EFWIN/プロセス", UnLock);
	Request("@EFWIN/ミンクトラウマ", UnLock);
	Request("@EFWIN/絵*", UnLock);
	Delete("@EFWIN/プロセス");
	Delete("@EFWIN/ミンクトラウマ");
	Delete("@EFWIN/絵*");
	FadeDelete("上背景", 2000, null, true);

	Wait(500);

	CreateSE("SEL01","se人体_足音_歩く07L");
	SoundEffect("SEL01","HANGAR");
	MusicStart("SEL01",3000,400,0,500,null,true);

	CreateSE("SEL02","se物体_鎖_鎖揺れる01L");
	SoundEffect("SEL02","HANGAR");
	MusicStart("SEL02",5000,400,0,800,null,true);

	CreateSE("SEL03","se擬音_水_はねる01");
	SoundEffect("SEL03","HANGAR");
	MusicStartSet("SEL03",400,0,1000,null,false);

	FadeDelete("絵色暗転上", 1000, null, true);

	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I somehow endured the pain and continued on&, and 
eventually&, the scenery changed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SEL*", 2000, 700, null);
	FadeDelete("絵色暗転", 1000, null, true);

	CreateProcessEX("プロセス", "Proc_dm3630scr_01Act");
	Request("プロセス", Start);

	SetVolumeEX("SEL01", 3000, 700, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
At some point I walked into the warehouse&.

The inside of it is dark and wraught with the smell of 
rust&.

Large chains hang from the ceiling&, and below them lay 
fallen iron bars scattered on the floor&.

On the other side of the seemingly endless room was a wall and an old-looking door&.

Is Mink behind that door?

I slowly inch closer to it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SEL*", 150, 0, null);

//※ＳＥ：ドアが開く音
	CreateSE("SE01","se物体_ドア鉄_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	OnBG(10,"bg204031_0_暴露ミンク倉庫個室");
	FadeBG(500,true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
By the door are small&, square rooms&, and the figure of a 
back that I know all too well&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1100020a01">
"Mink&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I finally found him&.&.&.!

{	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);}

I run up to him&, and Mink silently turns his head&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(300);

	St("C",740, @0,@0,"stミンク_通常_normal");
	FadeSt("C",300,true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1100030a05">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1100040a01">
"Are you okay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1100050a05">
"We're getting out of here&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm36/1100060a01">
"Yeah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
That's great&. He's fine&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 2000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I close my eyes and concentrate on drawing the image of 
the outside world&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※演出：あっけなく現実に戻る

	Wait(300);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	DrawTransition("絵色白", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Wait(4500);

//※次ファイル["dm3612.nss"]

}
