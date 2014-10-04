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


scene dm5360.nss_MAIN
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
	$GameName = "dm5370.nss";

}


scene dm5360.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵色白", 5000, "FFFFFF");

	OnBG(10,"bg304051_5_東江タワー研究エリア廊下01");
	FadeBG(0,true);

	CreateTextureSP("絵背景102", 100, Center, Middle, "cg/bg/bg304051_5_東江タワー研究エリア廊下01.jpg");
	Rotate("絵背景102", 0, @0, @180, 0, null, true);

	CreateSE("SE01","se擬音_効果_火花02");
	MusicStart("SE01",0,700,0,2000,null,false);
	CreateSE("SE02","se擬音_効果_火花02");
	MusicStart("SE02",0,700,0,1500,null,false);
	CreateSE("SE03","se擬音_効果_火花02");
	MusicStart("SE03",0,700,0,1000,null,false);

	CreateSE("SE00","se擬音_回想_フラッシュバック02");
	MusicStart("SE00",0,700,0,1200,null,false);

	FadeDelete("上背景", 0, Dxl2, true);
	Wait(16);
	Delete("絵色白");

	Wait(500);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/6000010a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Suddenly&, my vision clears and I fall to the ground&, 
gasping for breath&.

What happened just now&.&.&.

What was that&.&.&.?

A dream&.&.&.?

&.&.&.No&.
It wasn't a dream&.

The two men lie face-down on the floor in front of me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm018",0,450,true);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/6000020a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I'm the one that did this&.

My body had been hijacked&, but&.&.&. 

That's no excuse&. The one who broke these men was me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
He said that he'd "helped me countless times"&.

The power that he mentioned&.&.&. did he mean Scrap?

So&, that power is his&.&.&.?

Lately&, whenever I use Scrap&, I always get a headache 
afterward&.

And he must be the cause of that&.

His movements may have been what influenced my headaches&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
This is&.&.&. two personalities in one body&, isn't it?

He said to "switch" with me&.

What would've happened if I did?

Of course&, I'd become something that wasn't me&.

My consciousness would turn into his&, and he'd take 
over my body&.

&.&.&.I can't let that happen&.

If Scrap is a power of his&, then it must mean that he 
can use it as he wishes&.

Everyone would be broken apart&.

But&.&.&.

His words pierce my chest like thorns&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：前段とともに色味要調整

	CreatePlainSP("絵板写", 5000);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateTextureSP("絵窓/絵背景", 3000, Center, -240, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	CreateTextureSPsub("絵演砂嵐", 3400, Center, Middle, "cg/data/noize_01_00_0.png");

	CreateColorEX("絵色黒薄", 3500, "000000");
	Fade("絵色黒薄", 0, 500, null, true);

	CreateColorSP("絵窓/絵色黒", 4000, "000000");

	CreateColorSPadd("絵窓/絵色白", 2000, "000000");

	DrawTransition("絵窓/絵色黒", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	Fade("絵窓/絵色白", 0, 300, null, true);

	FadeDelete("絵板写", 500, null, true);

	Wait(200);

//	Fw("fw黒蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//※回想
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/6000030b01">
"You think don't know who you are&, don't you? Wrong&. The
 truth is that you do know&. But you won't accept it&."

//※回想
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm53/6000040b01">
"Failing to accept it&, you stay there&, not knowing a thing&.
 Unable to do anything&. Ending everything halfway&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵黒幕", 25000, "BLACK");
	Fade("絵黒幕", 500, 1000, null, true);

	Delete("絵色黒薄");
	Delete("絵背景");
	Delete("絵窓*");
	Delete("絵演砂嵐");

	FadeDelete("絵黒幕", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Won't accept it? Me&, accept what?

I don't know what&, but it makes me very anxious&.

He knows&, and the reality is that I do too&.&.&.

But I can't let myself use Scrap anymore&. 
He may hijack my body again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/6000050a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
My headache passes&, and I walk through the door that the 
white-robed men had exited from&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵背景103", 103, -1024, -300, "cg/bg/l/bg304052_5_東江タワー研究エリア廊下02_l.jpg");

	Move("絵背景103", 500, -1024, -420, null, false);
	Fade("絵背景103", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Behind the door was another hallway eventually leading 
to another door&.

{
	FadeDelete("絵背景103", 500, null, true);
}
Before I went in&, I checked on the two men&.

Their backs were barely moving&. 
Looks like they didn't die&.&.&.

A bit relieved&, I walked towards the door&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：ここ一連の背景不明
	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景104", 104, -974, -420, "cg/bg/l/bg304052_5_東江タワー研究エリア廊下02_l.jpg");

	Move("絵背景104", 1000, @-50, @0, null, false);
	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
I go down the hallway and stand in front of the door&.

{
	CreateSE("SE01","se物体_コイル_アラート");
	MusicStart("SE01",0,700,0,700,null,false);
}
There's another confirmation monitor next to it&, and the 
guard's ID won't open it&.

So the card is useless for this door&.&.&.

I go back to the white robed men and borrow a card from 
around one of their necks&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	CreateSE("SE02","se物体_ドア東江自動_扉開く01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1000);

	ClearFadeAll(0, true);

//※次ファイル["dm5370.nss"]

}
