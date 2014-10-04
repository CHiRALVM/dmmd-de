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


scene dm1090.nss_MAIN
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
	#bg301021_5_プラチナジェイル中通り1赤=true;
	#bg302051_5_グリッター前通り=true;
	#bg302052_5_グリッター前通りグリッター看板=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1100.nss";

}


scene dm1090.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm004",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg301021_5_プラチナジェイル中通り1赤");
	FadeBG(0,true);

	Delete("上背景");
	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I follow my map of Platinum Jail and walk around the city 
in circles&. 

I look around and notice a lot of advertisements for one 
certain thing&. 

"A special commemorative event&."

The large letters scroll across a monitor perched up on a 
gigantic billboard&.

It hurts my eyes as I watch the letters pass by&.

This must be the event Granny was talking about&. I 
definitely need to go to this one&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：時間経過？」
	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 1000, null, true);
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0017]
&.&.&.In the end&, that was all the information I got from 
prowling the streets&.

I'm fed up with the amount of praise and recognition of 
Toue floating around in Platinum Jail&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵色黒", 1000, null, true);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0018]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/9000010a01">
"&.&.&.That was really tiring&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm10/9000020a06">
"You were walking the whole time&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_serious",1800,"fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/9000030a01">
"Mhm&. Let's head to the Main Street&. Ren&, navigation
 please&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm10/9000040a06">
"Understood&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I give up on my search for any bit of information&, and 
head in the direction of my lodging&. 

On my way&, I drop by a convenient fast-food place and grab something to eat.

I get irritated when I have an empty stomach; getting rid 
of hunger is one of the more important things in life&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	Wait(500);
	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Even if it's fast food&, it's from Platinum Jail&. I got a 
bit flustered as the shop was a lot more stylish than the 
one at home&.

But I managed to buy food in peace&, and went on following 
Ren to the place where we were going&.

The residential buildings were all in sections&, and 
beautiful homes lined up in a row next to one another&.

Inside&, our place was a small little building&.

The exteriors all look the same&, but it somehow had an old-fashioned feel to it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	OnBG(10,"bg302052_5_グリッター前通りグリッター看板");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
Above the door&, a plate reads 'GLITTER'&.

The place next to us had a different name enscribed&, so 
they must all have their own names&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(300);

	CreateSE("SE01","se物体_コイル_操作音02");//あきゅん「ＳＥ：se物体_コイル_操作音02」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0029]
I hold up my Coil up to the monitor next to the door&, and 
the retro-style doorknob turns&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateSE("SE01","se物体_グリッター玄関_扉開く01a");//あきゅん「ＳＥ：se物体_グリッター玄関_扉開く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//※次ファイル["dm1100.nss"]

}
