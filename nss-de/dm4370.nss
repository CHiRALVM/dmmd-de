//<continuation number="50">
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


scene dm4370.nss_MAIN
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
	$GameName = "dm4380.nss";

}


scene dm4370.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01.jpg");

	FadeDelete("上背景", 1000, null, true);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");
	MusicStart("SE01",0,300,0,800,null,false);

	Wait(1000);

//※時間経過

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I leave the room after preparing&, I hear sounds 
coming from the first floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/7000010a01">
"What?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵背景", 500, 0, null, true);

	Wait(300);

	CreateSE("SE01","se動物_足音_走る蓮01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	Wait(700);
	SetVolumeEX("SE*", 700, 0, null);
	Wait(1500);

	CreateSE("SE01","se動物_足音_走る蓮01L");
	MusicStart("SE01",500,700,0,1000,null,false);

	Wait(1200);
	SetVolumeEX("SE*", 200, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I peek outside the door&. Ren runs through the gap and then returns inside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm005",0,450,true);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/7000020a06">
"Aoba&. It seems like Clear went outside&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/7000030a01">
"Eh?"

{	DeleteFw();}
I pick up Ren and put him in my bag; then I leave my room&.
I peek into Clear's room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302012_5_グリッター部屋02.jpg");

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(0,true);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.No one's there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm43/7000040a01">
"What's he up to?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//	Wait(500);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	Delete("絵背景");

	SoundPlay("@dm005",0,450,true);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Now feeling slightly annoyed&, I go down the staircase and 
leave Glitter&.

Where did he go&.&.&.?

In a single moment&, the smell of moisture floods into 
my nostrils&. I guess it must be raining&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm43/7000050a06">
"&.&.&.I hear a sound coming from the other side&."

{	DeleteFw();}
Ren pops out of my bag&, his ears twitching&.
I head down an alleyway to the side of Glitter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, Dxl1, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg301031_5_プラチナジェイル通り路地01");
	FadeBG(0,true);

	SetVolumeEX("SE*", 2000, 0, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
When I enter the alley&, I start running down the narrow 
path&.

Looking around each corner&, I finally come to a stop when 
I look to my left&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(0, true);

//※次ファイル["dm4380.nss"]

}
