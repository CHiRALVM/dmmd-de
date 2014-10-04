//<continuation number="80">
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


scene dm2390_vs.nss_MAIN
{
$TEXTBOX_TYPE="";
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
	#ev920ノイズ突進a=true;
	#ev239殺人マシーンノイズvs蒼葉=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2400.nss";

}


scene dm2390_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm011",0,450,true);//電脳バトル歪

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");

	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("上背景");
	FadeDelete("絵色白", 2000, null, true);

	Wait(500);

	CreateTextureEX("絵背景", 10, Center, Middle, "cg/bg/l/bg304121_5_東江タワー東江の間_l.jpg");
	SetShade("絵背景", SEMIHEAVY);

//※ＳＥ：どさっと床に膝をつく蒼葉
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景", 300, @0, -560, AxlDxl, false);
	Fade("絵背景", 300, 1000, Dxl3, true);
	Shake("絵背景", 200, 0, 8, 0, 0, 1000, null, true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/9000010a01">
"&.&.&.Ouch&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When I return to reality&, I fall to my knees&, trying to 
endure the pain that attacks my entire body&.

My sweat slowly drips to the floor&.

In addition to the wound on my side&, I'm in even more
pain now&. Not to mention the damage I took from Noiz's 
merciless beating earlier&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwAM蓮_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm23/9000020a06">
"Aoba&, be careful&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ17");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("絵背景", 600, @0, -288, Dxl3, false);
	Zoom("絵背景", 600, 800, 800, AxlDxl, false);
	Fade("絵背景", 600, 0, AxlDxl, true);
	Wait(200);

{	St("C",740, @0,@0,"stノイズ_正面洗脳_normal");
	FadeSt("C",200,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I look up and see Noiz standing there&, just like he was 
not long ago&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_走る01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DeleteAllSt(200,true);

//※ＳＥ：ノイズ、だだっと走り出す

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Noiz lowers himself into a crouching posture&.
{	Wait(300);}
&.&.&.And dashes towards me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateTextureSP("絵ＥＶ", 1100, -270, -133, "cg/ev/m/ev920ノイズ突進_m.jpg");
	Zoom("絵ＥＶ", 0, 700, 700, null, true);

	MusicStart("SE02",0,700,0,1000,null,false);
	Zoom("絵ＥＶ", 300, 1000, 1000, Dxl3, false);
	FadeFFR3("絵ＥＶ", 0,1000, 300, 0, 0, 20,null, false);
	EffectZoomDXadd(1110, 200, 0, "FFFFFF", "cg/ef/efクリアαの歌声.jpg", false);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/9000030a01">
"Uwhoa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorEX("絵色白", 5000, "FFFFFF");
	CreateTextureEXadd("絵演雑音拳閃", 4000, Center, Middle, "cg/data/slide_07_00_0.png");

	CreateSE("SE00","se戦闘_打撃_風切り高01");
	Move("絵ＥＶ", 200, -50, -360, Dxl3, false);
	Zoom("絵ＥＶ", 200, 1500, 1500, Dxl3, false);

	MusicStart("SE00",0,700,0,800,null,false);
	Fade("絵演雑音拳閃", 0, 1000, null, true);
	DrawTransition("絵演雑音拳閃", 100, 0, 1000, 100, Axl3, "cg/data/slide_04_00_1.png", false);
	Zoom("絵演雑音拳閃", 300, 2000, 1000, Dxl3, false);
	Wait(150);
	Fade("絵色白", 50, 1000, null, true);

	CreateSE("SE01","se戦闘_打撃_ヒット高04");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateSE("SE01a","se戦闘_打撃_ヒット低02");
	MusicStart("SE0a1",0,700,0,1000,null,false);
	CreateTextureSP("絵ＥＶ", 1100, -1450, 0, "cg/ev/l/ev239殺人マシーンノイズvs蒼葉_l.jpg");
	Rotate("絵ＥＶ", 0, @0, 180, @0, null,true);
	Request("絵ＥＶ", Smoothing);
	Zoom("絵ＥＶ", 0, 1500, 1500, null, true);

	CreateTextureEXadd("絵演打撃火花", 4000, 200, 50, "cg/ef/efx02火花電光01.jpg");
	Zoom("絵演打撃火花", 0, 2000, 2000, null, true);

	BezierMove("絵ＥＶ", 600, (-1450,0){-1350,0}{-1320,-20}(-1310,-60), Dxl2, false);

	Fade("絵演雑音拳閃", 0, 0, null, true);
	Fade("絵色白", 100, 0, null, false);

	Wait(90);

	CreatePlainEX("絵板写", 5000);
	Zoom("絵板写", 0, 1200, 1200, null, true);
	FadeFFR3("絵板写", 0,500, 200, 0, 0, 60,null, false);
	Fade("絵板写", 200, 0, null, false);

	Fade("絵演打撃火花", 0, 1000, null, true);
	Shake("絵演打撃火花", 400, 2, 4, 0, 0, 1000, null, false);
	Fade("絵演打撃火花", 300, 0, Axl1, false);
	Zoom("絵演打撃火花", 1000, 8000, 8000, Dxl3, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
I block his right-fisted punch with both arms&.
The impact runs itself all the way to my bones&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 6000);

	CreateTextureEX("絵演雑音攻撃", 1200, -165, -100, "cg/ev/m/ev920ノイズ突進_m.jpg");
	Request("絵演雑音攻撃", Smoothing);
	Rotate("絵演雑音攻撃", 0, @0, 180, -25, null,true);
	SetBlur("絵演雑音攻撃", true, 3, 500, 90, false);


	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 0, 1000, null, true);
	DrawTransition("絵色黒", 1, 0, 500, 100, null, "cg/data/slide_07_00_0.png", true);

	CreateTextureEX("絵演雑音殴愛", 1300, -175, -450, "cg/ev/l/ev239殺人マシーンノイズvs蒼葉_l.jpg");

	Fade("絵演雑音攻撃", 0, 1000, Axl3, true);
	Delete("絵板写");

	CreateSE("SE00","se戦闘_動作_跳躍低01");
	MusicStart("SE00",0,700,0,1000,null,false);
	Zoom("絵演雑音攻撃", 300, 1200, 1200, null, false);
	Move("絵演雑音攻撃", 300, -500, @0, Dxl3, false);

	Wait(250);

	EffectZoomDXadd(1210, 100, 0, "FFFFFF","cg/ef/efクリアαの歌声.jpg", false);


	CreateSE("SE01","se戦闘_打撃_風切り高01");
	MusicStart("SE01",0,700,0,600,null,false);
	SetBlur("絵演雑音殴愛", true, 3, 500, 60, false);
	Fade("絵演雑音殴愛", 300, 1000, Dxl3, false);
	Move("絵演雑音殴愛", 300, -510, -500, Dxl3, false);
	FadeDelete("絵色黒", 200, null, false);

	Wait(300);

	CreateSE("SE02","se戦闘_打撃_ヒット複数01");
	MusicStart("SE02",0,700,0,800,null,false);
	FadeFFR3("絵演雑音殴愛", 0,1000, 100, 0, 0, 20,null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
He continues to pummel me with his fists in rapid 
successions&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵演雑音殴愛二", 1310, Center, Middle, "cg/ev/m/ev239殺人マシーンノイズvs蒼葉_m.jpg");
	Move("絵演雑音殴愛二", 0, @100, @0, null, true);
	Move("絵演雑音殴愛二", 10000, @-100, @0, null, false);
	Fade("絵演雑音殴愛二", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/9000040a01">
"Noiz&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵演雑音殴愛三", 1310, Center, -160, "cg/ev/l/ev239殺人マシーンノイズvs蒼葉_l.jpg");
	Move("絵演雑音殴愛三", 0, @50, @0, null, true);
	Move("絵演雑音殴愛三", 10000, @-100, @0, null, false);
	Fade("絵演雑音殴愛三", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
As I guard&, I catch a glimpse of Noiz's face&.

I knew it&, his eyes&.&.&.

They didn't seem to be watching me&.
They were the eyes of a human who was manipulated by 
someone&.

Mizuki and Akushima were like that&, too&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_動作_跳躍低01");
	MusicStartSet("SE01",700,0,1000,null,false);
	CreateSE("SE01a","se戦闘_打撃_風切り高01");
	MusicStartSet("SE01a",1000,0,1000,null,false);

	CreateColorEX("絵色白", 5000, "FFFFFF");

	CreateTextureEX("絵演背景", 100, -512, -260, "cg/bg/m/bg304122_5_東江タワー東江の間_m.jpg");
	SetBlur("絵演背景", true, 3, 500, 60, false);

	CreateSE("SE01b","se人体_足音_一歩02");
	MusicStartSet("SE01b",700,0,1000,null,false);

	CreateSE("SE02","se擬音_効果_火花01");
	MusicStart("SE02",0,400,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);
	SetVolumeEX("SE02", 100, 0, null);

	CreateProcessEX("プロセス", "LProc_dm2390_vs_01Act");
	Request("プロセス", Start);

	FwPro("fw蒼葉_通常_pinch",800,"fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/9000050a01">
"Guh!? Woah!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	if($LProc_dm2390_vs_01Act==true){
	}else{
	TextBoxDelete(0);
	WaitAction("@プロセス", null);
	}
	Delete("プロセス");

/*
	//CreateSE("SE01","ＳＥダミー");//あきゅん「ＳＥ：se戦闘_打撃_風切り高01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev920ノイズ突進.jpg");
	Zoom("絵ＥＶ", 0, 1080, 1080, null, true);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);
	FadeFR2("絵ＥＶ",0,1000,200,0,0,30,null, true);
*/

	CreateSE("SE01","se環境_戦闘_戦闘01L");
	MusicStart("SE01",0,700,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Noiz's fist&, which had been targeting my face until now&, 
suddenly moves to attack my stomach area&.

I quickly pull myself back to avoid him but he still 
manages to graze my side&.

And I have a burn there&.
{	Wait(300);}
&.&.&.Is he doing it on purpose?

As if answering my question&, Noiz aims only at my side&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0038]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/9000060a01">
"Guuh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FadeDelete("絵ＥＶ", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0039]
I have no idea if he can even recognize me&.
But&.&.&. he's being pretty damn serious about this&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/9000070a01">
"Noiz&, stop!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	DeleteFw();
	CreateSE("SE01","se戦闘_打撃_風切り低01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateTextureEX("絵演雑音", 1110, Center, Middle, "cg/ev/ev920ノイズ突進.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵演雑音", 0, 1080, 1080, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,700,0,1500,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeFFR2("絵演雑音", 0,1000, 150, 0, 0, 30,null, false);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text9999]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/9000080a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	CreateSE("SE02","se戦闘_動作_跳躍低01");
	CreateTextureEX("絵演雑音", 1110, Center, Middle, "cg/ev/ev239殺人マシーンノイズvs蒼葉.jpg");
	Request("絵背景", Smoothing);
	Zoom("絵演雑音", 0, 1080, 1080, null, true);

	MusicStart("SE01",0,1000,0,1500,null,false);
	MusicStart("SE02",0,700,0,800,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeFFR2("絵演雑音", 0,1000, 150, 0, 0, 30,null, false);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Noiz's expression doesn't change&. He only keeps attacking  indifferently&, gazing at me&.

I'm forced into a one-sided defensive battle by his non-
stop mechanical movements&.

I don't want to fight Noiz when we're both like 
this&.&.&.! <k>I have to do something&.&.&.!

My arms begin to numb and I know for sure that I won't 
last&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm2400.nss"]

}

