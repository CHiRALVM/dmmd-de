//<continuation number="560">
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


scene dm2150.nss_MAIN
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
	#ev215ノイズとフードコート=true;
	#ev215ノイズとフードコートa=true;
	#ev215ノイズとフードコートb=true;
	#ev215ノイズとフードコートc=true;
	#bg301021_5_プラチナジェイル中通り2ゲーセン=true;
	#bg301071_5_プラチナジェイル屋台通り=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2160.nss";

}


scene dm2150.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg301021_5_プラチナジェイル中通り2ゲーセン");
	FadeBG(0,true);

	Delete("上背景");

	SoundPlay("@dm004",0,450,true);

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);


	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000010a01">
"Hey&, wait up!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I catch up to Noiz&, who is walking at a fast pace&.

When I raise my head to say at least one complaint&, 
something catches the edge of my field of view&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景100", 100, -187, -572, "cg/bg/l/bg301021_5_プラチナジェイル中通り2ゲーセン_l.jpg");
	Move("絵背景100", 500, 0, -572, Dxl3, false);
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
&.&.&.What is it?

I felt like something was in the darkness there just now&.

Something white from top to bottom that seemed like a ghost&.&.&.

Though I look back to check it&, there's nothing there&.

&.&.&.Was it my imagination?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵背景100", 300, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000020a01">
"&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
&.&.&.When I turn back&, Noiz is nowhere to be seen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000030a01">
"That guy&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se人体_足音_走る03");
	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,800,0,1400,null,false);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

//cono「演出：背景後ほど調整」
	OnBG(10,"bg301071_5_プラチナジェイル屋台通り");
	FadeBG(0,true);

	SetVolumeEX("SE*", 1000, 0, null);

	DrawDelete("絵黒幕", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I search around while walking at a quick pace and find 
Noiz stopped in front of a store&.

Simple restaurants seem to be gathered around here&, and 
there are also similar shops left and right&.

That reminds me&, he did say he was hungry&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000040a01">
"Hey&, Noiz!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreatePlainSP("絵板写", 5000);

	CreateMaskSP("絵窓", 2000, 0, 0, "cg/mask/ciライン_01_00.png", false);
	CreateMaskSetSP("絵窓", 4000, 0, 0, "ciライン_01_00", true, "ciライン_01_00z");
	CreateTextureSP("絵窓枠", 4000, Center, Middle, "cg/mask/ciライン_01_00z.png");
	CreateTextureSP("絵窓/絵シェード用", 500, Center, Middle, "cg/bg/l/bg301071_5_プラチナジェイル屋台通り_l.jpg");
	CreateTextureEX("絵窓/絵立ち", 700, 433, 38, "cg/bu/buノイズ_通常_normal.png");
	CreateColorEX("絵窓/絵薄黒", 200, "000000");


	SetShade("絵窓/絵シェード用", MEDIUM);
	Fade("絵窓/絵薄黒", 0, 200, null, true);

	DrawDelete("絵板写", 300, 100, Dxl1, "slide_05_01_0", true);

	Move("絵窓/絵立ち", 200, @20, @, Dxl1, false);
	Fade("絵窓/絵立ち", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I call out his name as I run up to him&, and he turns 
around&.

He's holding something like octopus dumplings in his hand&. So he's already bought stuff&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Fade("絵窓/絵*", 0, 0, null, true);
	Fade("絵窓*", 0, 0, null, true);

	FadeDelete("絵板写", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Noiz returns his eyes to the shop and moves to the next 
one&. He's buying something again&.

He moves to the next store again&, and buys something&.

And again&, he moves to the next store and buys something&.

&.&.&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000050a01">
"How much is he buying!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Noiz's both hands are full with food in no time&. It's 
enough to think that he's likely to drop all of it at 
any moment&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);
	SetVolumeEX("SE*", 1000, 0, null);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000060a01">
"You can't carry any more than that&. Give me some&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_紙_落ちる雑誌01");
	MusicStart("SE01",0,600,0,1400,null,false);

	CreateSE("SE02","se物体_紙_丸める01");
	MusicStart("SE02",0,400,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I can't bear the sight of it any longer and I rush over to him&, taking some of the food from his arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ110", 110, -100, -100, "cg/ev/l/ev215ノイズとフードコート_l.jpg");
	Move("絵ＥＶ110", 500, -120, -100, Dxl1, false);
	Fade("絵ＥＶ110", 500, 1000, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000070a03">
"If you wanna eat too&, go ahead&."

{
	Fw("fw蒼葉_通常_sigh2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000080a01">
"Er&, I didn't mean it like that&.&.&. You bought too damn
 much&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000090a03">
"If it's about money&, I have plenty&."

{
	Fw("fw蒼葉_通常_sigh");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000100a01">
"What's that supposed to mean? Are you doing a part time
 job with a good hourly pay?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000110a03">
"I'm dealing Rhyme information&. There are lots of customers who want my team's information even if it's expensive&.
 They just wanna know where Usui'll show up&."

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000120a01">
"Huh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
He did say he was doing something like that&.

But I don't understand why anyone would pay money to buy 
information about a game&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ110", 250, null, true);

	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000130a03">
"Hey&, what's that?"

{
	Fw("fw蒼葉_通常_shock");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000140a01">
"&.&.&.Huh?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵マスク枠左", 110, 505, 0, "cg/mask/ciウィンドウ縦01.png");
	CreateTextureSP("絵マスク枠右", 110, 505, 0, "cg/mask/ciウィンドウ縦02.png");

	CreateMask("絵マスク中", 100, 0, 0, "cg/mask/ci縦ライン_00_00.png", false);
	SetAlias("絵マスク中","絵マスク中");
	CreateTextureSP("絵マスク中/絵画像", 100, -599, -522, "cg/ev/l/ev215ノイズとフードコート_l.jpg");

	Zoom("絵マスク中",0,0,1000,null,true);

	FadeDelete("絵板写", 100, null, false);

	Move("絵マスク枠左", 200, 300, 0,Dxl3,false);
	Move("絵マスク枠右", 200, 710, 0,Dxl3,false);
	Zoom("絵マスク中",200,1150,1000,Dxl3,true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Noiz&, with a straight face&, points at the octopus 
dumplings that I'm holding&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000150a01">
"Didn't you just buy this?"

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000160a03">
"I did&, but I don't know what it's called&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000170a01">
"&.&.&.Wha?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
Thinking he's joking&, I stare at Noiz's face&.
But it doesn't look like he is&.

Noiz curiously peers at the octopus dumplings&.

&.&.&.So he's actually serious?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000180a01">
"Are you joking?"

{
	Fw("fwノイズ_通常_angry");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000190a03">
"I'm not&. Just tell me the name already&."

{
	Fw("fw蒼葉_通常_cranky3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000200a01">
"Octopus dumplings&."

{
	Fw("fwノイズ_通常_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000210a03">
"Octopus dumplings&.&.&. Hmmm&, weird&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	FadeDelete("絵マスク*", 200, null, false);
	Move("絵マスク枠左", 200, 505, 0,Dxl3,false);
	Move("絵マスク枠右", 200, 505, 0,Dxl3,false);
	Zoom("絵マスク中",200,0,1000,Dxl3,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
&.&.&.&.&.

&.&.&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000220a01">
"Seriously&.&.&.?"

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000230a03">
"And this?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
Noiz shows me a package he was holding&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000240a01">
"A crepe&."

{
	Fw("fwノイズ_通常_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000250a03">
"This?"

{
	Fw("fw蒼葉_通常_sigh3");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000260a01">
"Deep fried doughnuts&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000270a03">
"Huh&. They all have weird names&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000280a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
I give Noiz another confused stare&.

But it doesn't seem like he's making fun of me&.

I knew this guy was different&, but I didn't think he 
wouldn't know the names of foods that even kids and 
old people back home knew about&.&.&.

{
	CreateSE("SE02","se物体_紙_丸める01");
	MusicStart("SE02",0,600,0,1400,null,false);
}
Noiz stares at the crepe and deep fried doughnuts which I 
have in my hands&, and eats a doughnut in one bite&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0092]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000290a03">
"It's sweet&."

{
	Fw("fw蒼葉_通常_sigh2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000300a01">
"Of course it is&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000310a03">
"But it's not bad&."

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000320a01">
"That's good&.&.&. but what the heck have you been eating till now?"

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000330a03">
"Delivery pizza or pasta&."

{
	Fw("fw蒼葉_通常_shock2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000340a01">
"Only that?"

{
	Fw("fwノイズ_通常_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000350a03">
"Only that&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000360a01">
"Wouldn't you normally get bored of that stuff?"

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000370a03">
"Not really&. I've always been okay with everything that
 tastes good&."

{
	Fw("fw蒼葉_通常_sigh");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000380a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
He isn't just a little weird&.

He's a complete weirdo&.&.&.&.

Feeling strangely exhausted&, I eat one of the octopus 
dumplings I'm holding&.

I guess I am kinda hungry&.
After having not eaten in a while&, it tastes pretty good&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ120", 120, Center, Middle, "cg/ev/ev215ノイズとフードコート.jpg");
	Fade("絵ＥＶ120", 500, 1000, null, true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
I always thought that Platinum Jail only had fancy 
restaurants&, but apparently it has this kind of stuff too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000390a01">
"They even had pancakes stuffed with bean jam&.&.&. I'm sort
 of impressed&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,600,0,800,null,false);

	CreateTextureEX("絵ＥＶ121", 121, -1022, 0, "cg/ev/l/ev215ノイズとフードコート_l.jpg");
	Move("絵ＥＶ121", 500, -778, -77, Dxl1, false);
	Fade("絵ＥＶ121", 500, 1000, Dxl1, true);
	Delete("絵ＥＶ120");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0122]
While I was looking at the other shops&, my right arm was 
suddenly grabbed&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ124", 124, Center, Middle, "cg/ev/ev215ノイズとフードコートb.jpg");
	CreateTextureEX("絵ＥＶ123", 123, Center, Middle, "cg/ev/ev215ノイズとフードコートa.jpg");
	CreateTextureEX("絵ＥＶ122", 122, -778, -77, "cg/ev/l/ev215ノイズとフードコートa_l.jpg");
	Fade("絵ＥＶ122", 500, 1000, Dxl1, true);
	Delete("絵ＥＶ121");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0123]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000400a01">
"Hm? &.&.&.Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵ＥＶ122", 500, -670, -156, Dxl3, false);
	Fade("絵ＥＶ123", 500, 1000, Dxl3, true);
	Delete("絵ＥＶ122");

	CreateSE("SE01","se擬音_コミカル_ポイ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵ＥＶ124", 500, 1000, Dxl3, true);
	Delete("絵ＥＶ123");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0124]
The octopus dumpling I was about to eat&.&.&.!

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000410a01">
"Hey&, what are you doing!"

//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000420a03">
"Salty&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ125", 125, -421, 0, "cg/ev/m/ev215ノイズとフードコートb_m.jpg");
	Move("絵ＥＶ125", 500, -300, 0, Dxl1, false);
	Fade("絵ＥＶ125", 500, 1000, Dxl1, true);
	Delete("絵ＥＶ124");

//	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000430a01">
"Of course it is&. Are you a kid or something? Just how old
 are you&, kiddo?"

//{	Fw("fwノイズ_通常_normal3");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000440a03">
"Nineteen&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000460a01">
"Hmmm&, nineteen&, huh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ*", 500, null, true);

//※次のセリフとの間をワンテンポ置く
	Wait(1000);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000480a01">
"&.&.&.Wha!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※予備台詞採用の場合、以下を調整します。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0141]
Nineteen!?

I stare at Noiz&.

I was always sure he was younger than me&, but he's under 
twenty&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	St("C",740, @0,@0,"fuノイズ_通常_angry");
//	FadeSt("C",200,true);

	Fw("fwノイズ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000490a03">
"What?"

{
	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000500a01">
"&.&.&.No&, I was just thinking about how young you are&."

{
	Fw("fwノイズ_通常_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000510a03">
"How old are you?"

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000520a01">
"Twenty-three&."

{
	Fw("fwノイズ_通常_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/5000530a03">
"Almost the same&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
Like hell it is!

I've been constantly thinking that he's weird&, was it 
because of this? Age?

The gap between his calm deposition and appearance&.&.&.

Hey doesn't that leave me at the mercy of a younger person?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ131", 131, Center, Middle, "cg/ev/ev215ノイズとフードコートc.jpg");
	CreateTextureEX("絵ＥＶ130", 130, -798, -129, "cg/ev/l/ev215ノイズとフードコートc_l.jpg");
	Move("絵ＥＶ130", 500, -889, -79, Dxl1, false);
	Fade("絵ＥＶ130", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000540a01">
"&.&.&.Hmmn?"

Then the letters on the notification monitors that appear  everywhere in the city catch my eye&.

'A special commemorative event&.'

This is Toue's event that Granny was telling me about&.&.&.

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000550a01">
"Hey&, Noiz&. Isn't that&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Move("絵ＥＶ130", 500, -740, -152, Dxl1, false);
	Fade("絵ＥＶ131", 500, 1000, null, true);
	Delete("絵ＥＶ130");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
I look towards Noiz.

&.&.&.But again&, nobody's there&.

{
	FadeDelete("絵ＥＶ131", 250, null, true);
}
&.&.&.He disappeared again&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/5000560a01">
"That doofus&.&.&. Where did he go this time?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
//	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0172]
Feeling like a parent searching for a missing child&, I 
bolt off in search of him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//※次ファイル["dm2160.nss"]


//	ClearFadeAll(1000, true);

}
