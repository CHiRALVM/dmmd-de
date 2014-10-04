//<continuation number="200">
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


scene dm1380.nss_MAIN
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

	//▼演出処理を初期化
	TiesMovieDelete();

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1390.nss";

	//▼頭痛レベル設定
	$HALevel=3;

}


scene dm1380.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

	Fw("fw蒼葉_通常_hard");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
&.&.&.I wasn't able to stop him&.

Nothing can come out of hatred&.

Weren't you one of the best people to know that?

Even so&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_pain2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000020a01">
"Why did you do that&, Koujaku&.&.&.!"

{
//※ＳＥ：どさどさっと紅雀の仲間たちが次々倒れる
	CreateSE("SE01","se人体_衝撃_転倒02複数");
	MusicStart("SE01",0,700,0,1000,null,false);
}

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000030a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg304102_5_東江タワー中ホールアングル別.jpg");
	Fade("絵背景100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Suddenly&, the members holding me down collapse&.

When I look around&, I see that the rest of the 
Beni-Shigure members have done the same&.

I lean over them&, and put a finger to one of their napes&.

&.&.&.He has a pulse&. They just look faint&.

{	FadeDelete("絵背景100", 500, null, true);}
But what's the meaning of this?

It's like they're dolls whose strings were just cut off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_hard2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0027]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000040a01">
"&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainEX("絵板写", 3900);
	SetShade("絵板写", HEAVY);


	CreateColorEX("絵色黒", 4000, "000000");
	Fade("絵板写", 300, 1000, null, false);
	Fade("絵色黒", 300, 500, null, true);
	Wait(100);
	Fade("絵板写", 150, 0, null, false);
	Fade("絵色黒", 150, 0, null, true);

	Wait(50);

	Fade("絵板写", 300, 1000, null, false);
	Fade("絵色黒", 300, 500, null, true);
	Wait(100);
	Fade("絵板写", 150, 0, null, false);
	Fade("絵色黒", 150, 0, null, true);

	Wait(500);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
I'm attacked by a sudden feeling of drowsiness and lose all
strength in my legs&.

I can't believe I'd be drowsy now of all times&.&.&.

I put a hand to my now blazing hot neck&, and I feel a 
place on it swelling up like a bug bite&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
This is&.&.&. a trace from Ryuuhou's needle&. 

Everyone&, including all of those Beni-Shigure members&, were
pricked by Ryuuhou's needle&. 

&.&.&.Maybe&, since Ryuuhou died&, his influence has 
disappeared?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000050a01">
"&.&.&.Guh&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainEX("絵板写", 990);
	SetShade("絵板写", HEAVY);

	Fade("絵板写", 1000, 1000, null, false);
	Fade("絵色黒", 300, 750, null, true);
	Wait(100);
	Fade("絵色黒", 150, 500, null, true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I feel so sleepy&.&.&.
I begin to lose focus&, feeling as if I'm about to fall 
down&.

But I can't let myself&.

Koujaku's still&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Request("絵板写", Disused);
	Fade("絵板写", 1000, 0, null, false);
	Fade("絵色黒", 500, 0, null, true);
	Delete("絵色黒");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0036]
I shake off the drowsiness and somehow find the strength 
to stand up&.

But then&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	TextBoxDelete(0);

	Wait(16);

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg304091_5_東江タワー中ホール.jpg");
	Request("絵背景", Smoothing);
	SetShade("絵背景", HEAVY);
	Zoom("絵背景", 0, 2000, 2000, null, true);


	Fade("絵背景", 500, 1000, null, true);

	Wait(500);

	St("C",740, @0,@50,"bu紅雀_バーサク_normal");

	Move("絵背景", 800, @0, @-25, AxlDxl, false);

	Shake("@StNameC/C*", 800, 3, 0, 0, 0, 700, null, false);
	Move("@StNameC/C*", 800, @0, @-50, AxlDxl, false);
	FadeSt("C",500,true);

	SoundPlay("@dm007a",0,450,true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I freeze at the sight before me&.

Koujaku stands there holding his blade as it drips with 
blood&, completely without a trace of his former self&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000060a01">
"Koujaku&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Shake("@StNameC/C*", 300, 3, 0, 0, 0, 500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/8000070a02">
"&.&.&.&.&."

Koujaku&.&.&. won't recognize me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_バーサク_shout");
	FadeSt("C",200,true);

	CreatePlainSP("絵板写", 5000);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 300, null, false);
	Zoom("絵板写", 300, 1100, 1100, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/8000080a02">
"&.&.&.&.&.Graaahhhhhh!!"

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000090a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――



	CreateSE("SE01","se戦闘_剣撃_風切り高02");
	CreateSE("SE02","se戦闘_動作_跳躍高01");
	CreateSE("SE04","se人体_足音_走る01");

	CreatePlainSP("絵板写", 5000);

	DeleteAllSt(0,true);

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SE02",0,700,0,1000,null,false);


	Move("絵板写", 200, @0, @200, Axl1, false);
	Shake("絵板写", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 300, null, false);
	Zoom("絵板写", 200, 2000, 2000, Axl1, false);



	MusicStart("SE04",0,700,0,1100,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Koujaku swings his blade and begins to run towards me&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE04", 1000, 0, null);

	CreateTextureEX("ef01", 1000, Center, Middle, "cg/ef/efx01剣閃01.jpg");

	CreateSE("SE05","se戦闘_動作_跳躍低01");
	CreateSE("SE03","se人体_衝撃_転倒02");

	MusicStart("SE03",0,700,0,1000,null,false);
	MusicStart("SE05",0,700,0,1000,null,false);
	Fade("ef01", 0, 1000, null, true);
	Shake("ef01", 500, 2, 10, 0, 0, 1000, null, false);
	Zoom("ef01", 500, 1600, 1600, Dxl1, false);

	CreateColorSP("絵色白", 4000, "FFFFFF");

	Delete("絵背景");

	CreateTextureSP("bg01", 100, Center, Middle, "cg/bg/bg304091_5_東江タワー中ホール.jpg");
	Zoom("bg01", 0, 1300, 1300, null, true);
	Request("bg01", Smoothing);

	Wait(30);

	Zoom("bg01", 300, 1000, 1000, Dxl1, false);
	FadeDelete("絵色白", 70, null, true);

	FadeDelete("ef01", 350, Axl1, true);

	Wait(300);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050a]
I fumble trying to get away&, with my senses dull and slow&, 
when a frightful wind blows just above my head&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000100a01">
"Koujaku! Stop!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Koujaku grips his sword&, once again blazing towards me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Wait(16);

//※ＳＥ：びゅん、と大剣を薙ぎ払う
	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵色白", 4000, "FFFFFF");

	CreateTextureEX("ef01", 1000, Center, Middle, "cg/ef/efx01剣閃02.jpg");
	Rotate("ef01", 0, @0, 180, @0, null,true);
	Fade("ef01", 0, 1000, null, true);
	Shake("ef01", 500, 2, 10, 0, 0, 1000, null, false);
	Zoom("ef01", 500, 1600, 1600, Dxl1, false);

	CreateTextureSP("bg01", 100, Center, Middle, "cg/bg/l/bg304102_5_東江タワー中ホールアングル別_l.jpg");

	Wait(30);
	DeleteAllSt(0,true);

	Shake("bg01", 400, 0, 8, 0, 0, 1000, null, false);
	Move("bg01", 300, @-300, @-200, Dxl2, false);

	FadeDelete("絵色白", 70, null, true);

	MusicStart("SE02",0,700,0,1000,null,false);

	FadeDelete("ef01", 350, Axl1, true);

{	Fw("fw蒼葉_通常_shock2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000110a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0055]
I throw my entire body to the floor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

//	TextBoxDelete(0);

	FadeDelete("bg01", 200, null, false);
	Move("bg01", 200, @200, @0, Axl1, true);


	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0056]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000120a01">
"-Koujaku! Get yourself together!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_バーサク_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/8000130a02">
"Guuhhh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
The ominous tattoo coiling around Koujaku's back now spans all the way to his face&.

How should I stop Koujaku?
What do I do&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	SetVolumeEX("@dm*", 2000, 0, null);

//あきゅん「演出：白蒼葉の誘惑」

//※頭痛レベル：３
//※ずきん、と頭が痛くなる
	//頭痛エフェクト(0)
$HALevel=3;
	HAFade(2000, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0069]
{	Fw("fw蒼葉_通常_pain");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000140a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 10000);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,Middle,"cg/ev/m/ev900もう１人の蒼葉_m.jpg",1000,1000);

	CreateColorSP("絵色黒", 1500, "000000");
	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 400, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Delete("絵板写");

//※頭痛レベル：３
//※ずきん、ずきん、と頭が痛い
	//頭痛エフェクト(0)
	HAFade(2000, 0,false);

	CreateSE("SETL01","se擬音_効果_ノイズ01L");
	MusicStart("SETL01",0,700,0,1000,null,true);
	TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　――――　Destroy　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
　――――　Destroy&, Destroy　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
　――――　That is the only way　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0073]
　――――　The only way to stop him　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 200, 1, null);
	TemptationAobaOut(200,false);

{	Fw("fw蒼葉_通常_hard2");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0074]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000150a01">
"The way to- stop him&.&.&.?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 0, 700, null);
	TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0075]
　――――　Yes　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0076]
　――――　Before he destroys you　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0077]
　――――　You must destroy him　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0078]
　―――― With Scrap ――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	//TemptationAobaIn("絵色黒");
	Shake($TemptationNoizNut, 600000, 20, 10, 0, 0, 1000, null, false);
	//TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0079]
　――――　There is no other way　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 200, 0, null);
	TemptationAobaOut(200,false);

{	Fw("fw蒼葉_通常_pinch");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000160a01">
"&.&.&.No&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0082]
If I use Scrap&, then Koujaku will end up like Mizuki&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	Delete("絵色黒");

//※↓回想元"dm0810.nss"では
//<voice name="タエ" class="タエ" src="voice/dm08/1000670b03">
//「その時にもしお前が的確な言葉を投げかけていたら、ミズキの意識は元に戻ったかも知れないね」
//統一してください（千代子
//※「的確な」に統一しました

	EfRecoIn1(10000,200);


	Delete("絵色黒");
	CreateTextureSP("絵効果背景", 1050, Center, Middle, "cg/bg/bg104021_5_蒼葉宅台所.jpg");

	EfRecoIn2(500);


	Fw("fwタエ_通常_normal");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//※回想
//【タエ】
<voice name="タエ" class="タエ" src="voice/dm13/8000170b03">
"If you had chosen the right words at that time&, Mizuki's
 consciousness might have returned&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0084]
If I had just faced Mizuki&, I might've been able to save
him&.

Then&, could I save Koujaku too&.&.&.?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0086]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000180a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("bg01", 100, Center, Middle, "cg/bg/bg304091_5_東江タワー中ホール.jpg");
	SetShade("bg01", HEAVY);
	Request("bg01", Smoothing);
	Zoom("bg01", 0, 2000, 2000, null, true);

	St("C",740, @0,@0,"bu紅雀_バーサク_normal");

	Fade("bg01", 200, 1000, null, false);
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0087]
There's no time to hesitate&.
I can't think of any other way&.

{
	SoundPlay("@dm016",0,450,true);
}
I look straight into Koujaku's eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
I don't even wonder if this will work or not&.
I have no time to&.

"It'll definitely go well&."

I repeat that to myself countless times&.

"It'll definitely go well&."

I'll definitely&.&.&. save Koujaku&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0093]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000190a01">
"&.&.&.Koujaku!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	CreateColorEX("絵色白", 4000, "FFFFFF");

	CreateSE("SE00","se人体_足音_走る01");
	MusicStart("SE00",0,700,0,1200,null,false);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 5, 3, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 300, null, false);
	Zoom("絵板写", 300, 1100, 1100, null, false);

	Wait(200);

	Fade("絵色白", 100, 1000, null, true);


	CreateSE("SE01","se戦闘_動作_跳躍低01");
	CreateSE("SE02","se戦闘_動作_跳躍高01");
	CreateSE("SE03","se人体_衝撃_転倒02");
	CreateSE("SE05","se人体_足音_着地02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Delete("絵背景");
	DeleteAllSt(0,true);

	CreateTextureEX("fu01", 740, Center, Middle, "cg/fu/fu紅雀_バーサク_normal.png");
	Zoom("fu01", 0, 900, 900, null, true);

	CreateTextureEX("ef01", 1000, Center, Middle, "cg/ef/efx01剣閃01.jpg");
	Zoom("ef01", 0, 2000, 2000, null, true);
	Rotate("ef01", 0, @0, @180, @0, null,true);
	Fade("ef01", 0, 1000, null, true);
	Shake("ef01", 500, 2, 10, 0, 0, 1000, null, false);
	Zoom("ef01", 500, 1600, 1600, Dxl1, false);

	Zoom("fu01", 500, 1000, 1000, Dxl1, false);
	Fade("fu01", 150, 1000, null, false);

	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	SetVolumeEX("SE00", 200, 0, null);

	MusicStart("SE02",0,700,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	FadeDelete("ef01", 350, Axl1, true);

	MusicStart("SE03",0,700,0,1000,null,false);


	Wait(200);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0094]
While he charges at me with his blade overhead&.&.&.
I jump into his chest&.

The sword to the side of my face grazes my hair&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 10000);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",1102);
	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,150,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	CreateColorSP("絵色黒", 1500, "000000");
	CreateColorSP("絵演黒蒼葉誘惑黒隠", 1110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 0, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	Delete("絵板写");

	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,1050,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

	//CreateColorEX("絵色黒", 1500, "000000");
	//Fade("絵色黒", 1000, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　――――　Destroy　――――

</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	TemptationAobaSet("絵演黒蒼葉誘惑",1100,Center,445,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",4000,4000);
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);

	CreateSE("SE01","se人体_頭痛_痛む01");
	MusicStart("SE01",0,700,0,950,null,false);
	Wait(300);
	TemptationAobaIn("絵色黒");
	TemptationAobaOut(200,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
　――――　Destroy&, Destroy　――――


</PRE>
	SetTextM();
	TypeBeginF(150);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵色黒上", 10000, "000000");
	TemptationDelete("絵演黒蒼葉誘惑黒隠");
	Delete("絵色黒");
	Delete("絵色黒上");

//※頭痛レベル：３
//※ずきん、ずきん、と頭が痛む
	//頭痛エフェクト(0)
	HAFade(2000, 0,true);
	Wait(300);
	//頭痛エフェクト(0)
	HAFade(2000, 0,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
I ignore my unrelenting headaches&, and concentrate onto
Koujaku's lifeless&, pure white eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0104]
//※力発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/8000200a01">
"&.&.&.Koujaku&.&.&. &.&.&.I'm- going inside&.&.&. of you&.&.&.!!"



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	Wait(32);

	CreateSE("SE01","se人体_心臓_鼓動01");
	CreateSE("SCRAPINSE01","se人体_心臓_鼓動02L");

	MusicStart("SE01",0,700,0,1000,null,false);
	MusicStart("SCRAPINSE01",0,700,0,1000,null,true);

	CreatePlainSP("絵板写", 5000);
	CreatePlainSP("絵板写2", 5000);
	Request("絵板写", Smoothing);
	SetBlur("絵板写", true, 2, 500, 1000, false);

	Zoom("絵板写", 30000, 1500, 1500, null, false);

	Zoom("絵板写2", 500, 1100, 1100, Dxl1, false);
	FadeDelete("絵板写2", 500, null, true);

	Wait(500);

//※蒼葉、紅雀の精神世界へ入る

/*
	CreateSE("SE01","se擬音_精神_導入01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE02", 2000, 0, null);
	CreateColorEX("絵色白", 5000, "FFFFFF");

	Zoom("絵板写", 2500, 2000, 2000, Axl1, false);
	Fade("絵色白", 2000, 1000, null, true);
	Wait(4500);
*/

	SetVolumeEX("SE*", 300, 0, null);

	ScrapIn("転送暴露a",5010);
	TiesMovieNEXT();
	Wait(2000);
	ScrapInEnd();

//※次ファイル["dm1390.nss"]

}
