//<continuation number="140">
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


scene dm0500.nss_MAIN
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
	$GameName = "dm0510.nss";

}


scene dm0500.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg104001_3_蒼葉宅前通り玄関消灯");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/ef/efbg疾走001.jpg");

	CreateSE("SE01","se人体_足音_走る01L");
	MusicStart("SE01",0,700,0,1000,null,true);
	DrawDelete("上背景", 250, 100, Dxl1, "slide_01_01_1", true);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000010a01">
"Ha&.&.&.Haa&, ha&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景");

	DrawDelete("絵黒幕", 300, 100, null, "slide_01_01_1", true);

	Wait(500);

	CreatePlainSP("絵板写", 5000);

	CreateSE("SE01","se物体_蒼葉宅玄関_扉開く強く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	OnBG(10,"bg104011_5_蒼葉宅玄関消灯");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg104011_5_蒼葉宅玄関消灯.jpg");
	CreateColorEXsub("絵色黒", 5000, "WHITE");
	Fade("絵色黒", 0, 200, null, true);

	Shake("絵背景", 300, 10, 10, 0, 0, 500, Axl1, false);
	DrawDelete("絵板写", 200, 100, Dxl1, "slide_01_00_0", true);

//※玄関のカギを解き、ドアをバタン！と勢い良く開ける
	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000020a01">
"Granny!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Delete("絵背景");
	FadeDelete("絵色黒", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I unlock the door in a frenzy and jump into the house to 
find it pitch black&.

The lights aren't on&. And it doesn't look like anyone's 
here&.

Granny&.&.&. are you here?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000030a01">
"Granny?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I call for her one more time&, but no one answers&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.This is bad&.

It feels like I'm losing blood&, I feel hot and cold at 
the same time&.

The bloodstains on the walls of the Dry Juice hangout&.
The Granny character that was kidnapped by black bats&.

Both of those images flicker in my head&.

What do I do?
If Granny was&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000040a01">
"Granny!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg104011_5_蒼葉宅玄関消灯_m.jpg");
	Move("絵背景", 0, @0, @200, null, true);

	Move("絵背景", 500, @0, @-100, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I need to search for her&. I run up the hallway&, not even 
thinking of taking off my shoes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000050a01">
"-!? Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I suddenly tripped over something&.

What?

What would be so huge that&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景", 1000, @0, @-100, Dxl1, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
&.&.&.What&.

&.&.&.A person?

&.&.&.A person is lying in the hallway&.

Could it be&.&.&.

&.&.&.&.&.Granny?

The person is lying face down and isn't moving&.

I quiver and catch my breath&, and timidly get closer to 
them so I can see&.

The body is huge&, nothing like Granny&. It's probably a guy&.

I feel a little relieved&.
But&.&.&.

Who is he?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ef仮入れ・ここでははっきり見せない
	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵ＥＦ100", 500, Center, Middle, "cg/ev/evf01モルヒネ首もとにタグアート.jpg");
	CreateTextureSP("絵ＥＦ50", 200, Center, Middle, "cg/ev/evf01モルヒネ首もとにタグアート.jpg");
//	CreateTextureSP("絵背景裏", 300, Center, Middle, "cg/ev/evf01モルヒネ首もとにタグアート.jpg");
	CreateColorEXsub("絵色黒", 3000, "WHITE");

	SetShade("絵ＥＦ100", MEDIUM);
//	SetShade("絵背景裏", LIGHT);

	Fade("絵色黒", 0, 300, null, true);

	FadeDelete("絵板写", 1000, null, true);

//	Fade("絵ＥＦ100", 300, 0, Dxl1, true);
//	Wait(500);
//	Fade("絵ＥＦ100", 300, 1000, Dxl1, true);
//	Delete("絵背景裏");

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I stare at him&, and find a tattoo-looking thing on his 
neck&.

This&.&.&. this is probably tag art&.

Besides&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000060a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
This tag&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵ＥＦ100");
	Delete("絵色黒");

	FadeDelete("絵板写", 1000, null, true);

	Wait(500);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000070a01">
"&.&.&.Morphine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※足音_１人_後ろで重いブーツの気配（ミンク）
	CreateSE("SE01","se人体_足音_歩く05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(100);
	SetVolumeEX("SE*", 0, 0, null);
	FadeDelete("絵ＥＦ50", 250, Dxl1, true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000080a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateTextureSP("絵背景", 200, Center, 0, "cg/bg/m/bg104011_5_蒼葉宅玄関消灯_m.jpg");
	CreateTextureSP("絵窓/絵立絵", 700, Center, Middle, "cg/bu/buミンク_通常_normal.png");
	CreateStencil("絵窓/絵立絵影", 750, Center, Middle, 128, "cg/bu/buミンク_通常_normal.png", false);
	CreateColorSP("絵窓/絵立絵影/絵黒幕", 720, "BLACK");

	SetAlias("絵窓/絵立絵影", "絵窓/絵立絵影");
	DrawTransition("@絵窓/絵立絵影/絵黒幕", 0, 0, 500, 300, null, "cg/data/slide_02_00_0.png", true);

	SetShade("絵窓/絵背景", MEDIUM);

	DrawDelete("絵黒幕", 200, 100, Dxl1, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
I feel someone's presence and turn around&.

In the dark hallway&, I see a man standing there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
He's so large that I have to look upwards&, and his 
intimidating stature makes me unable to move a muscle&.

But the fear of him having done something to Granny is 
what scared me the most&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000090a01">
"&.&.&.Where's Granny?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/0000100a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
He doesn't answer&. He stares at me with his cool eyes 
through the darkness&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※衣擦れ_捕まれる
	CreateColorEX("絵黒幕", 6000, "BLACK");

	FwPro("fw蒼葉_通常_shout",1500,"fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000110a01">
"I said where is she&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵黒幕", 0, 1000, null, false);
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_02_01_0.png", true);

	Delete("絵窓/絵*");
	Move("絵背景", 0, @0, -268, null, true);
	SetShade("絵背景", NULL);

	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 200, 0, 15, 0, 0, 500, Axl1, false);
	DrawDelete("絵黒幕", 200, 100, Dxl1, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
When I draw closer to him&, someone grabs my shouders from 
behind&.

And it wasn't just one person&. A bunch of people grab and 
hold me down&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※打撃（腹に重い衝撃）
	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ05");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");
	CreateColorEXadd("絵色白", 5000, "WHITE");
	CreateSE("SE01","se戦闘_打撃_ヒット低02");

	Fw("fw蒼葉_通常_pinch");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000120a01">
"Let me go! Fucking- Let go&.&.&.!<?>
{
	Wait(3300);
	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色白", 50, 1000, Dxl1, true);
	Wait(10);
	Shake("絵背景", 200, 0, 20, 0, 0, 500, Axl1, false);
	Fade("絵色白", 50, 0, Dxl1, true);
}　&.&.&.Argh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
Something heavy slams into my stomach&, and I stop 
breathing&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 200, Center, 0, "cg/bg/l/bg104011_5_蒼葉宅玄関消灯_l.jpg");

	St("C",740, @0,@0,"fuミンク_通常_normal");
	FadeSt("C",0,true);

	SetShade("絵背景", MEDIUM);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm05/0000130a05">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm05/0000140a01">
"&.&.&.Ngh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0081]
The giant man's fists that look like clumps of shadow sink into my gut&. 

{
	CreateColorEX("絵黒幕", 5000, "BLACK");
	Fade("絵黒幕", 5000, 1000, null, false);
}
I start to fall forward&. I can't breathe&.
My vision starts fade into darkness&.

{
	SetVolumeEX("@dm*", 5000, 0, null);
}
Damn it&.&.&.
Not here&.&.&.

Granny&.&.&.

{
	Fade("絵黒幕", 1000, 1000, null, false);
}
&.&.&.Granny&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※暗転

	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm0510.nss"]

}
