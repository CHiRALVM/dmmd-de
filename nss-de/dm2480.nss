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


scene dm2480.nss_MAIN
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
	#イベントファイル名=true;

	//▼演出処理を設定
	Request("@SE21", Lock);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2490.nss";

	//▼頭痛レベル設定
	$HALevel=4;
}


scene dm2480.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(20,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	CreateTextureEX("絵背景", 100, -1024, InBottom, "cg/bg/l/bg304122_5_東江タワー東江の間_l.jpg");
	Fade("絵背景", 0, 1000, null, true);

	FadeDelete("上背景", 3000,null, true);

	Wait(500);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/8000010a01">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When I come back to reality&, I'm lying face down on the 
floor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	Move("絵背景", 10000, 0, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012a]
I immediately look for Noiz&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012b]
&.&.&.There he is&.

Noiz is collapsed on the floor like I am&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainEX("絵板写", 100);

{	FwPro("fw蒼葉_通常_rage",1250,"fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/8000020a01">
"Noiz! &.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateSE("SE01","se人体_足音_一歩03");
	MusicStart("SE01",0,1000,0,800,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,500,0,1000,null,false);

	CreatePlainEX("絵板写", 100);
	FadeFFR2("絵板写", 0,600, 200, 0, 0, 50,null, true);
	Delete("絵板写");

	//SoundPlay("@dm006",0,450,true);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 500, 250, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
I try to stand myself up&, but a pain swells throughout my 
body&.

Especially my head&.&.&.<?>
{
	Fade("絵色黒", 500, 500, null, false);
}
It's painful just to open my eyes-<?>
{
	Fade("絵色黒", 500, 900, null, false);
}
It  hurts&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「↓：ここから現実に白蒼葉が現れることを意味して少し変わった出し方する」
//※白蒼葉の幻影が一瞬映る
//あきゅん「演出：白蒼葉の誘惑」

	CreatePlainSP("絵板写", 10000);
	Fade("絵色黒", 200, 1000, null, true);

//	Wait(300);

//※白蒼葉の幻影が一瞬映る
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
//あきゅん「※：終盤で頭痛も酷いので黒いフチは消してます」
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0,0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Delete("絵板写");

	CreateSE("SEL01","se人体_心臓_鼓動01");
	MusicStart("SEL01",0,700,0,1000,null,false);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,700,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　――――　It's already over　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021a]
&.&.&.A laughing voice&.

Someone's voice&.&.&.

"His" voice&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021b]
&.&.&.Shit&.

I need to get Noiz&, and&.&.&.

{	CreateSE("SE01","se人体_足音_一歩03");
	MusicStart("SE01",0,1000,0,800,null,false);}
Ignoring the voice and the pain in my head&, I go over to 
Noiz&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_hard");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/8000030a01">
"&.&.&.Noiz&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/8000040a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
His eyes slowly open&, and he sees me&.

The light slowly comes back into his dull eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/8000050a03">
"&.&.&.I&.&.&. What just&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
&.&.&.That's great&.
He's back to normal&.

I somehow managed to do it&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※頭痛レベル：３
//※ＳＥ：どくん、と心臓の音
$HALevel=3;
	HAFade(2000, 0,true);

	CreatePlainSP("絵板写", 10000);

	CreateColorSP("絵色黒", 5000, "000000");
	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
//あきゅん「※：終盤で頭痛も酷いので黒いフチは消してます」
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0,0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Delete("絵板写");

	CreateSE("SEL00","se擬音_精神_超音波01L");
	MusicStart("SEL00",3000,300,0,400,null,true);
	CreateSE("SEL01","se人体_心臓_鼓動02L");
	MusicStart("SEL01",3000,500,0,400,null,true);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,800,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
　――――　It's over　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	SetVolumeEX("SEL00", 3000, 300, null);
	SetVolumeEX("SEL01", 1000, 500, null);
	SetFrequency("SEL01", 1000, 500, null);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
　――――　It's the end　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
&.&.&.I hear "his" voice&.&.&.

More clearly than ever&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
My head hurts&. My hands are shaking&.

I can't breathe&.

My eyes are losing focus&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwノイズ_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/8000060a03">
"Hey&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEL00", 3000, 400, null);
	SetVolumeEX("SEL01", 1000, 600, null);
	SetFrequency("SEL01", 1000, 600, null);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
　――――　Give up　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	SetVolumeEX("SEL00", 3000, 500, null);
	SetVolumeEX("SEL01", 1000, 700, null);
	SetFrequency("SEL01", 1000, 700, null);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
　――――　You should know　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	SetVolumeEX("SEL00", 3000, 1000, null);
	SetVolumeEX("SEL01", 1000, 900, null);
	SetFrequency("SEL01", 1000, 1200, null);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
　――――　the truth of this　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	SetVolumeEX("SEL00", 3000, 1250, null);
	SetVolumeEX("SEL01", 1000, 1100, null);
	SetFrequency("SEL01", 1000, 1400, null);
	CreateSE("SE00","se人体_頭痛_痛む01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
　――――　You're-　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――

	SetVolumeEX("SEL00", 1000, 1500, null);
	SetVolumeEX("SEL01", 1000, 1200, null);
	SetFrequency("SEL01", 1000, 1600, null);

//{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0049]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/8000070a01">
"&.&.&.!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);
	Wait(2000);

	CreatePlainSP("絵板写", 10000);


	CreateTextureEX("絵黒蒼葉之影零", 5010, Center, Middle, "cg/ev/ev900もう１人の蒼葉.jpg");
	SetTone("絵黒蒼葉之影零", NegaPosi);
	DrawTransition("絵黒蒼葉之影零", 1, 0, 0, 100, null, "cg/data/blind_01_00_0.png", true);
	CreateTextureEX("絵黒蒼葉之影一", 5000, Center, Middle, "cg/ev/ev900昔の荒れてた蒼葉.jpg");
	SetTone("絵黒蒼葉之影一", NegaPosi);
	CreateTextureEX("絵黒蒼葉之影二", 5000, Center, Middle, "cg/ev/ev900ライム対戦蒼葉VSウサギ頭.jpg");
	SetTone("絵黒蒼葉之影二", NegaPosi);
	CreateTextureEX("絵黒蒼葉之影三", 5000, Center, Middle, "cg/ev/ev061全員集合a.jpg");
	SetTone("絵黒蒼葉之影三", NegaPosi);

	CreateTextureSP("絵黒蒼葉之影四合成前背景", 5000, Center, Middle, "cg/bg/bg301041_5_プラチナジェイル通り路地02.jpg");
	CreateTextureSP("絵黒蒼葉之影四合成前立絵", 5000, Center, InBottom, "cg/bu/bu悪島_戦闘ハイパー_laugh.png");
	Move("絵黒蒼葉之影四合成前立絵", 0, @0, @60, null, true);
	Wait(16);
	CreatePlainEX("絵黒蒼葉之影四", 5000);
	SetTone("絵黒蒼葉之影四", NegaPosi);
	Delete("絵黒蒼葉之影四合成前*");

	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　――――　It's over for you　――――

</PRE>
	SetTextM();
	TypeBeginF(1000);//―――――――――――――――――――――――――――

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");

	CreateSE("SEL01","se擬音_効果_ノイズ01L");
	MusicStart("SEL01",0,10,0,1000,null,true);
	CreateProcessEX("プロセスア", "LProc_dm2480_01aAct");
	CreateProcessEX("プロセスイ", "LProc_dm2480_01bAct");
	Request("プロセスア", Start);
	Request("プロセスイ", Start);
	SetVolumeEX("SEL01", 10000, 1200, null);
	Zoom("絵黒蒼葉之影零", 20000, 2000, 2000, null, false);
	DrawTransition("絵黒蒼葉之影零", 10000, 0, 1000, 100, null, "cg/data/noize_01_00_0.png", false);

//※白蒼葉の顔がハッキリ見える
//※どくんと心臓の音＆ひどい頭痛
//※頭痛レベル：ここから４
$HALevel=4;
	HAFade(5000, 0,false);
/*
	Wait(50);
	//頭痛エフェクト(0)
	HAFade(2000, 0,true);
	Wait(50);
	//頭痛エフェクト(0)
	HAFade(2000, 0,true);
	Wait(50);
	//頭痛エフェクト(0)
	HAFade(2000, 0,false);
	Wait(50);
	//頭痛エフェクト(0)
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm24/8000080a01">
"Ahhhhhhhhhhhh!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Request("プロセスア", Stop);
	Request("プロセスイ", Stop);
	Delete("絵黒蒼葉之影*");
	SetVolumeEX("SE*", 0, 0, null);
	Delete("プロセス*");

	Wait(2500);

/*
	Fw("fwノイズ_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm24/8000090a03">
"Hey!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
&.&.&.&.&.

&.&.&.&.&.&.&.

&.&.&.Yeah&.

&.&.&.That's right&.

&.&.&.I know&.

I just saw everything&.

My power&.&.&.

&.&.&.The true nature of Scrap&.

The one who would whisper "to destroy everything" to me 
whenever I'd use my power&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm015",0,450,true);

	CreateTextureSP("絵効果01", 1050, Center, Middle, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	CreateTextureSPsub("絵効果02", 1200, Center, Middle, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	Zoom("絵効果02", 0, 1005, 1005, null, true);

	FadeDelete("絵色黒", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]

He's&.&.&. me&.

My instinct&. My one true desire&.
A part of my consciousness&.

I want to destroy everything&.
To run myself to exhaustion with all the destruction&.

And&.&.&. to give death to everything&.

He's the part of me that desires that&.

Scrap is the power to destroy people&.
And he must be the source of it&.

So his presence grows each time I use Scrap&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateColorSPadd("絵フラッシュ白", 5000, "FFFFFF");
	Wait(30);
	Delete("絵効果*");
	Delete("絵色黒");
	FadeDelete("絵フラッシュ白", 300, null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
And now&.

By using my power recklessly&, the balance between us has   broken&.

Because of that&.&.&.

He's begun to eat away at my own consciousness&.

He'll completely wipe me away&, using my body however he 
likes&.

Complete destruction&.
Absolute death&.




</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2490.nss"]

}


