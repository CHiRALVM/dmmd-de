//<continuation number="90">
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


scene dm2040_vs.nss_MAIN
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

	#ev920ノイズ突進 = true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2050.nss";

}


scene dm2040_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE11","se人体_足音_走る01");//あきゅん「ＳＥ：se人体_足音_走る01L」
	MusicStart("SE11",1000,400,0,600,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.Suddenly&, I hear footsteps approaching&.

{	SetVolumeEX("SE*", 1500, 0, null);}
Did the cops find us?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,500,0,1100,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 5, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/4000010a01">
"&.&.&.Ngh&."

{
	St("C",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/4000020a03">
"This way&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	OnBG(10,"bg101051_5_旧住民区通り裏路地06");
	FadeBG(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Pulling my arm&, Noiz begins to run and soon turns at a 
corner&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm008",0,450,true);

	CreateTextureSP("絵背景100", 1000, 0, -70, "cg/bg/bg101051_5_旧住民区通り裏路地06.jpg");
	Zoom("絵背景100", 0, 1500, 1500, null, true);
	SetShade("絵背景100", MEDIUM);

	CreateTextureSP("絵背景200", 1100, Center, InBottom, "cg/fu/fu悪島_通常_shout.png");
	Move("絵背景200", 0, 200, @0, null, true);

	CreateSE("SE01","se人体_足音_着地01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景200", 300, 60, @0, Dxl1, false);
	DrawDelete("絵黒幕", 250, 100, null, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm20/4000030b08">
"Ooooooops&, this is it for you&, Mr&. and Mrs&. Terrorist!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/4000040a01">
"!"

{	Fw("fwノイズ_通常_pinch");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/4000050a03">
"Tch&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	Delete("絵背景100");
	Delete("絵背景200");

	St("C",740, @0,@0,"st悪島_通常_pride");
	FadeSt("C",0,true);

	FadeDelete("絵板写",300,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm20/4000060b08">
"I fiiiiiinally found you! I'm not letting you get away
 this time! Surrender quietly! HAAAHAHAHAAA!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「↓：ここはスライド系の演出でスピード感を」
//嶋：若干微妙な間合いなので、演出箇所を一行変更します。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Akushima&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍高01");//あきゅん「ＳＥ：se戦闘_動作_跳躍高01」

	CreateTextureEX("絵ＥＶ", 1100, -361, -268, "cg/ev/ev920ノイズ突進.jpg");
	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 0, 2000, 2000, null, true);
	SetBlur("絵ＥＶ", true, 2, 200, 30, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵ＥＶ", 0, 1000, null, false);
	Move("絵ＥＶ", 200, 0, 0, Dxl1, false);
	Zoom("絵ＥＶ", 200, 1000, 1000, null, true);

	DeleteAllSt(0,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
Fear fills my thoughts&, but Noiz suddenly takes off 
towards him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm20/4000070a01">
"Hey!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※ノイズ、ばきぃっと悪島を思い切り殴る
	CreateSE("SE01","se戦闘_打撃_ヒット低02");//あきゅん「ＳＥ：se戦闘_打撃_ヒット低01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");

	Wait(30);

	Delete("絵ＥＶ");
	FadeDelete("絵色白", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm20/4000080b08">
"Fuaagh!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_衝撃_転倒01");//あきゅん「ＳＥ：se人体_衝撃_転倒01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
With an incredible thump&, Akushima landed on his back&.

Noiz delivers a very much deserved knuckle sandwich to 
Akushima&.

Akushima&, seemingly unconscious on his feet&, begins to 
spurt blood from his nose&.

I think his nose is broken&.&.&.

And he was hit so suddenly&.&.&.
How strong do you have to be to be able to do that to 
someone?

I look at Noiz and see his rough knuckles&.

He's not only dangerous in Rhyme&, he's also scary in real 
hand to hand combat&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm20/4000090a03">
"Hey&, let's go!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se人体_足音_走る01");//あきゅん「ＳＥ：se人体_足音_走る01」
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_足音_走る01");
	MusicStart("SE02",0,700,0,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0037]
Noiz grabs my hand and takes off again&.

His grip returning me to reality&, I run to catch up with 
him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);
	SetVolumeEX("SE01", 2000, 0, null);

//※場面転換→旧住民区とＰＪを結ぶ通路
//	CreateColorEX("絵色黒", 5000, "000000");
//	Fade("絵色黒", 1500, 1000, null, true);

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
We somehow escape from the police and continue towards the area where we're supposed to meet with Haga-san&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(500);

//※次ファイル["dm2050.nss"]

}
