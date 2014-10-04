//<continuation number="290">
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


scene dm3760.nss_MAIN
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
	#bg304022_5_東江タワー前通り崩壊中=true;
	#bg304031_5_東江タワー廊下01崩壊中=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3770.nss";

}


scene dm3760.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304031_5_東江タワー廊下01崩壊中");
	FadeBG(0,true);

	CreateTextureSP("ゆれ", 100, Center, Middle, "cg/bg/bg304031_5_東江タワー廊下01崩壊中.jpg");
	Request("ゆれ", Smoothing);
	Shake_Loop("@ゆれ","shake01");


	SoundPlay("@dm008",0,450,true);


	CreateSE("SE01","se乗物_改造バイク_スピン01");
	MusicStart("SE01",0,700,0,1000,null,false);


	CreateColorEXmul("絵色赤", 500, RED);
	Fade("絵色赤", 300, 600, null, true);

	Delete("上背景");
	DrawDelete("絵色黒", 150, 100, null, "slide_01_02_1", true);

	CreateSE("SE11","se乗物_改造バイク_走行01L");
	CreateSE("SE12","se物体_東江タワー_地鳴り01L");
	CreateSE("SE13","se物体_東江タワー_アラーム01L");

	MusicStart("SE11",0,700,0,1000,null,true);

	CreateVOICE("合成音声","dm25/1000010e14");
	MusicStart("合成音声",0,700,0,1000,null,true);

	Wait(1000);

	MusicStart("SE12",0,700,0,1000,null,true);
	MusicStart("SE13",0,500,0,1000,null,true);

//※場面切替／蒼葉視点

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000010a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_東江タワー_地割れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The tower starts to violently sway&.

Time has run out&. I drive the bike like a madman&.

I hold onto Akushima with my other hand tightly&, clinging 
to him as hard as I can to make sure he doesn't fall off&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("合成*", 2500, 0, null);
	SetVolumeEX("SE*", 2500, 0, null);
	CreateColorEX("絵黒幕", 5000, "000000");

	CreateSE("SE02","se乗物_改造バイク_エンジンふかす02");
	CreateSE("SE03","se乗物_改造前バイク_走り去る");
	MusicStart("SE02",0,700,0,1000,null,false);

	Wait(1000);
	MusicStart("SE03",0,700,0,1000,null,false);

	Zoom("ゆれ", 800, 3000, 3000, Axl2, false);
	Move("ゆれ", 800, @-400, @-100, Axl2, false);
	Rotate("ゆれ", 800, @0, @0, @-30, Axl2,false);

	Wait(600);
	Fade("絵黒幕", 0, 1000, null, true);
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/circle_01_00_1.png", true);

	Delete("絵色赤");

	Shake_LoopDelete();
	Delete("ゆれ");

	Wait(1000);

	OnBG(10,"bg304022_5_東江タワー前通り崩壊中");
	FadeBG(0,true);
	CreateTextureSP("ゆれ", 100, Center, Middle, "cg/bg/bg304022_5_東江タワー前通り崩壊中.jpg");
	Request("ゆれ", Smoothing);
	Shake_Loop("@ゆれ","shake01");
	Zoom("ゆれ", 0, 2000, 2000, null, true);

	MoveFTP1("@ゆれ",3500,10,2);

	CreateSE("SE05","se乗物_改造前バイク_急ブレーキ01");
	CreateSE("SE06","se乗物_改造バイク_走行01L");
	CreateSE("SE07","se戦闘_衝撃_破損01a");
	CreateSE("SE12","se物体_東江タワー_地鳴り01L");
	MusicStart("SE05",0,700,0,1000,null,false);
	MusicStart("SE06",2000,700,0,1000,null,true);
	MusicStart("SE07",2000,300,0,1000,null,true);
	MusicStart("SE12",2000,700,0,1000,null,true);


	CreateMovieSPsub("煙１", 990, 0, 0, true, true, "dx/mvk100.ngs");
	Zoom("煙１", 0, 5000, 5000, null, true);

	Zoom("ゆれ", 600, 1100, 1100, Dxl2, false);
	DrawDelete("絵黒幕", 150, 100, null, "circle_01_00_1", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
We go down the stairs at a racing speed&, making it all the way to the bottom and out of the entrance&.

I look up to the Tower&, it's swaying from left to right 
and has cracks all over&.

{
	CreateSE("SE01","se乗物_改造バイク_スピン01");
	CreateSE("SE02","se物体_東江タワー_地割れ02");
	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE05", 1000, 0, null);
	SetVolumeEX("SE06", 1000, 0, null);
	SetVolumeEX("SE07", 1000, 0, null);

}
I stomp on the brakes to halt&.

But without stopping&, I started to swerve and the wheels 
screeched&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000020a01">
"Uwah! &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE03","se人体_衝撃_転倒01");
	CreateSE("SE04","se物体_物入れ_散らかる01");

	Shake_LoopDelete();
	Shake("ゆれ", 1200, 0, 10, 0, 0, 1000, null, false);

	MusicStart("SE04",0,700,0,1000,null,false);

	Wait(1000);
	MusicStart("SE03",0,700,0,1000,null,false);
	Shake_Loop("@ゆれ","shake01");
//	Shake_LoopDelete();

//	BGPlainShake(50,1000,0,20,0,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I tumbled down some good meters away from the bike&. 


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000030a01">
"&.&.&.Ouch&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
I look over to the bike and see white smoke coming from 
it&.

I frantically run over to it and move the frame&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000040a01">
"Hey&, are you okay!?"

{	Fw("fwAMトリ_バイク_normal");}
//【トリ】
<voice name="トリ" class="鳥" src="voice/dm37/6000050b12">
"&.&.&.Yeah&. Other than that little accident&, there are no
 problems&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
&.&.&.That's great&.
I'm not worried for now&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/6000060e45">
"Hey!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
It's the Scratch members&. They're running this way&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/6000070e45">
"Looks like you made it!"

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/6000080e46">
"I was freaking out&. I was wondering why you weren't coming
 out!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000090a01">
"This explosion&, you guys&.&.&."

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/6000100e45">
"Yeah&, it was Mink-san's orders&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
//<PRE @box0>
//[text0040]


//</PRE>
//	SetText();
//	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/6000110e46">
"Anyway&, let's get the hell out of here!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※バイクが走り出す音
	CreateSE("SE01","se乗物_改造バイク_エンジンふかす01");
	CreateSE("SE02","se乗物_改造バイク_急加速01");

	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I flick my head around to the sound of the accelerator 
going&, and the bike heads to the collapsing tower&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000120a01">
"Oi!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
You'll get caught up in that mess if you go now&.&.&.!

I tried to go after it&, but someone grabbed me by the 
shoulders from behind&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/6000130e45">
"It's fine&. We're going&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000140a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
The looks on the Scratch members' faces as they look up to the tower says it all&.

&.&.&.I see&.

Maybe Tori was going to save Mink&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/6000150e46">
"I don't know the specifics&, but we have an outline of what Mink-san was aiming for&."

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/6000160e46">
"So&.&.&. We're going to go&. That's what he wanted&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
After he says that&, the rest of the members silently hold 
a gloomy expression&.

&.&.&.That's right&.
It's painful for them too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0062]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000190a01">
"&.&.&.I got it&. Let's go&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
As the members started to walk away&, I noticed a person 
rolling around on the ground&.

&.&.&.Akushima&.

He's been like that ever since he got thrown off the bike&. Looks like he hasn't regained consciousness yet&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/6000200e46">
"What's up?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
I hesitated for a moment&, but then turned in Akushima's 
direction&.

{
	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);
}
I throw his arm around my shoulders and hold him up next 
to me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmミンクチームA_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/6000210e45">
"Hey&. What're you going to do with him?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000220a01">
"He'll die here like this&. At least until he's far away
 enough from the detonation&.&.&."

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/6000230e46">
"Are you stupid? Trash him&, this ain't funny&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000240a01">
"I can't just watch him die&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
He really is heavy&.&.&.

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);
}
I stumble along&, and a single member comes up to me&.

He clicks his tongue and then pulls up Akushima from the 
other side&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_smile3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000250a01">
"Thanks&, you're a big help&."

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/6000260e45">
"It would be fucking stupid if you died and he lived&,
 asshat!"

{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm37/6000270e45">
"I'll tell you now that I'm not carrying his ass&. I swear
 I'm dropping him in a little bit&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm37/6000280a01">
"I know&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
Because of the help on the other side&, moving forward  
became a lot easier&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateMovieEXsub("絵動画煙", 500, Center, Middle, true, true, "dx/mvk100.ngs");
	Zoom("絵動画煙", 0, 3500, 3500, null, true);

//※ＳＥ：ゴゴゴゴゴゴ、とデカい地響き
	CreateSE("SE01","se物体_東江タワー_地割れ01");
//	BGPlainShake(50,300,50,4,0,0,1000,null,true);
	Shake_LoopDelete();
	Shake("ゆれ", 1200, 0, 10, 0, 0, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵動画煙", 1000, 1000, null, true);

	Shake_Loop("@ゆれ","shake01");

{	Fw("fwmミンクチームB_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm37/6000290e46">
"Hurry!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
Another rumbling later and my entire vision turned into 
dust&.

Unable to look back any more&, we ran far away as we could 
from the tower in a daze&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	SetVolumeEX("@dm*", 4000, 0, null);

	TextBoxDelete(0);
	Wait(16);

	CreateColorEX("絵色黒", 5000, "000000");

	CreateSE("SE01","se物体_東江タワー_倒壊01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake_LoopDelete();
	Shake("ゆれ", 1200, 0, 15, 0, 0, 1000, null, false);
	Wait(1000);

	Shake("ゆれ", 1200, 9, 5, 0, 0, 1000, null, false);
	Wait(500);
	Shake("ゆれ", 1200, 5, 10, 0, 0, 1000, null, false);
	Wait(500);
	Shake("ゆれ", 20000, 5, 10, 0, 10, 1000, null, false);

	Wait(1500);

	SetVolumeEX("SE*", 4000, 0, null);
	Fade("絵色白", 3000, 1000, null, true);
	Wait(2000);
	ClearFadeAll(4000, true);

	Delete("煙*");

	Wait(5000);

//※次ファイル["dm3770.nss"]

}
