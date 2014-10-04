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


scene dm5450_vs.nss_MAIN
{

$TEXTBOX_TYPE="ライム";

	RMAlarmSet(3000);

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
	#ev554蓮目元アップ=true;
	#ev554蓮目元アップa=true;

	//▼演出処理を設定
	$dm5450_vs_バトルなう=true;

	//▼演出処理を初期化
	TiesMovieDelete();


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5460.nss";

}


scene dm5450_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "000000");
	FadeDelete("上背景", 0, null, true);

	TiesMovieSet("転送ライムa",2000);

	CreateColorEXadd("絵色白", 5000, "FFFFFF");

	if($nextrhymescene=="dm5450_vs.nss"){
	MusicStart("@EFWIN/SE01",2000,700,0,500,null,true);
	Request("@EFWIN/SE01", UnLock);
	}else{
	CreateSE("SE01","se擬音_ライム_超音波01L");
	MusicStart("SE01",2000,700,0,500,null,true);
	}

	TiesMovieStart();

	DrawDelete("絵色黒", 500, 100, Axl2, "slide_02_01_1", true);

	Wait(500);
	WaitKey(1000);
	TiesMovieNEXT();
	Wait(500);
	WaitKey(1000);

	SetVolumeEX("@EFWIN/SE*", 600, 0, null);
	SetVolumeEX("SE*", 600, 0, null);

	CreateSE("SE020","se擬音_精神_導入01");
	MusicStart("SE020",0,700,0,1000,null,false);
	Fade("絵色白", 1000, 1000, AxlAuto, true);

	Wait(650);
	WaitKey(1350);

	TiesMovieDelete();


//※蒼葉、蓮によって強制的にライム空間へ引っ張られる


	PrintGO("上背景", 30000);

	SoundPlay("@dm010",0,450,true);

	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg201011_0_ライムパブリックフィールド");
	FadeBG(0,true);

	CreateSE("SE01","se擬音_精神_脱出01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写2", 4000);
	Zoom("絵板写2", 0, 1200, 1200, null, true);
	SetBlur("絵板写2", true, 3, 500, 100, false);

	Zoom("絵板写2", 1500, 1000, 1000, Dxl1, false);

	Delete("上背景");
	FadeDelete("絵色白", 1000, null, true);

	Wait(2000);

	Delete("絵板写2");

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/5000010a01">
"Rhyme&.&.&.? A Drive-By? But who&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
When I realize who my opponent is&, I take a step back in 
disbelief&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//あきゅん「素材要望：ＥＶ、ここでの犬蓮絵欲しいなぁ」

	CreateTextureEX("絵背景", 100, Center, -576, "cg/bg/bg201011_0_ライムパブリックフィールド.jpg");
	CreateTextureEX("キャラ", 100, Center, Middle, "cg/st/x/stAM蓮_通常_rage_x2.png");
	Zoom("絵背景", 0, 3000, 3000, null, true);
	SetShade("絵背景", HEAVY);

	Move("絵背景", 0, @-100, @0, null, true);
	Move("キャラ", 0, @-200, @20, null, true);

	Move("絵背景", 1000, @100, @0, Dxl1, false);
	Move("キャラ", 1000, @200, @0, Dxl1, false);

	Fade("絵背景", 300, 1000, null, false);
	Fade("キャラ", 300, 1000, null, true);

	Wait(1000);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/5000020a01">
"Ren&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
No way&.&.&.

Was it him who dragged me into this Drive-By?

But I've never heard of an Allmate initiating a Drive-By&.

Can Allmates even do that sort of thing&.&.&.!?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);


//【蓮】※ＳＥ扱い
//<voice name="蓮" class="蓮" src="voice/dm54/5000021a06">
//「グルルルルルルル」
	CreateVOICE("SE01","dm54/5000021a06");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1500);

	CreatePlainSP("絵板写2", 5000);
	SetBlur("絵板写2", true, 3, 300, 50, false);

	CreateSE("SE02","se戦闘_動作_跳躍高01");
	MusicStart("SE02",0,700,0,1000,null,false);
	SetVolumeEX("SE01", 500, 0, null);


	Delete("絵背景");
	Delete("キャラ");

	Zoom("絵板写2", 300, 1500, 1500, Dxl1, false);
	Fade("絵板写2", 300, 0, Axl1, true);

	Delete("絵板写2");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
As I stand there&, bewildered&, Ren begins to sprint towards me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/5000030a01">
"Ren! Wait&, hey!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
A question comes to mind when I avoid his charge&.

Why is he a dog?
He always changes into a human form in Rhyme&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	CreateSE("SE02","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 500, 2, 5, 0, 0, 1000, null, false);
	FadeDelete("絵板写", 300, null, false);


	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/5000040a01">
"Guh-!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
During the second I was in thought&, Ren lunged at my arm&.

I push his face away before he's able to bite me with his 
sharp fangs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I want to push him away with all of my strength&, but I 
can't do that to Ren&. I just can't&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_pinch",3500,"fw蒼葉_通常_pain");
//	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/5000050a01">
"Ren&, let go&, Hey&.&.&. Gah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);


//※ＳＥ：蓮が蒼葉に噛み付く
	CreateSE("SE01","se戦闘_剣撃_ヒット01");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色赤", 4000, "CC0000");
	Wait(30);
	FadeDelete("絵色赤", 70, null, true);

	Wait(300);

//※ＳＥ：どくんと心臓の鼓動
	CreateSE("SE01","se人体_心臓_鼓動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainEX("絵板写", 2000);
	Zoom("絵板写", 0, 1500, 1500, null, true);
	Fade("絵板写", 0, 850, null, true);
	Wait(30);
	Zoom("絵板写", 2000, 1000, 1000, null, false);
	Fade("絵板写", 1000, 0, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
A sharp pain runs through my arm&.
He bit me&.&.&.!

But at the same time&.&.&.

Something strange happens&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Wait(200);
	//おがみ：画面エフェクト何か入れる予定

	CreatePlainEX("絵板写", 450);
	SetShade("絵板写", HEAVY);

	Fade("絵板写", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
Where he bit me&, there's&.&.&.

Something running down&.&.&.?

What?

A whirlpool of warmness and sadness&.&.&.
Stealing away my pain and my consciousness&.

My eyes open wide&, and flashes of different images passed 
through them&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//※蓮との過去の日々が高速フラッシュバック（素材的に可能なら）
	EfRecoIn1(10000,200);

	CreateTextureEX("回想１", 500, -346, 259, "cg/ev/ev002蒼葉登場.jpg");
	Zoom("回想１", 0, 2000, 2000, null, true);
	CreateTextureEX("回想２", 500, -312, 193, "cg/ev/ev022蒼葉音楽効果a.jpg");
	Zoom("回想２", 0, 2000, 2000, null, true);
	CreateTextureEX("回想３", 510, -785, -118, "cg/ev/l/ev026蓮メンテ_l.jpg");
	Zoom("回想３", 0, 2000, 2000, null, true);
	CreateTextureEX("回想４", 505, 58, 361, "cg/st/l/st蒼葉_通常_smile2_l.png");
	Zoom("回想４", 0, 2000, 2000, null, true);
	CreateTextureEX("回想４背景", 500, center, middle, "cg/bg/bg101011_1_旧住民区通り表.jpg");
	SetShade("回想４背景", HEAVY);
	Zoom("回想４背景", 0, 2000, 2000, null, true);

	Request("回想*", Smoothing);

	Fade("回想１", 0, 1000, null, true);

	EfRecoIn2(200);

	Wait(100);

	Fade("回想２", 100, 1000, null, true);

	Wait(200);

	Fade("回想３", 100, 1000, null, true);
	Fade("回想４*", 0, 1000, null, true);

	Wait(200);

	Fade("回想３", 100, 0, null, true);
//	WaitKey();
	Wait(200);

	EfRecoOut1(100);

	Delete("回想*");

	EfRecoIn2(400);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
These images&.&.&.

What are these?

My memories?

&.&.&.No&.

These could be&.&.&.

Ren's?

Are they&.&.&. all of what Ren's seen up until now?

They're like my memories&, all of the things I've seen 
before&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
It was like Ren had always been watching through the same 
eyes as me&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

//※人型の蓮の姿が表示される（目閉じ→目開き）
//※その上に蒼葉が重なる？（可能なら）

	CreateColorEX("絵演黒板", 1900, "000000");

	CreateTextureEX("絵背景青葉", 510, -27, -15, "cg/st/x/st蒼葉_通常_serious_x00.png");
	CreateTextureEX("絵背景蓮", 500, Center, Middle, "cg/ev/ev554蓮目元アップ.jpg");
	CreateTextureEX("絵背景蓮a", 500, Center, Middle, "cg/ev/ev554蓮目元アップa.jpg");
	Fade("絵背景蓮a", 1000, 1000, null, true);

	Fade("絵背景蓮", 0, 1000, null, true);
	FadeDelete("絵背景蓮a", 500, null, true);

	Wait(500);
	Fade("絵背景青葉", 1000, 500, null, true);

	Fade("絵背景青葉", 1000, 0, Axl1, true);

	Fade("絵演黒板", 1000, 1000, null, true);

	Delete("絵背景蓮");
	Delete("絵背景青葉");
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
&.&.&.Ren?

&.&.&.!

&.&.&.I see&.

So that's how it is&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(100);
	CreatePlainSP("絵板写弐", 1900);

//※白蒼葉を一瞬表示
//あきゅん「演出：白蒼葉の誘惑」
//※蒼葉、白蒼葉になる

//おがみ：同等の演出箇所から抜粋
/*
	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev900もう１人の蒼葉.jpg");
	CreateColorSP("絵演黒隠", 1110, "000000");
	DrawTransition("絵演黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	WaitAction("絵演黒隠", null);

	CreatePlainSP("絵板写弐", 1900);

	Fade("絵板写", 0, 0, null, true);
	FadeFFR("絵板写弐", 0,1000, 100, 0, 0, 50,null, true);
	Fade("絵板写", 0, 1000, null, true);

	Wait(500);
*/
	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵ＥＶ", 1000, Center, -110, "cg/ev/l/ev900もう１人の蒼葉_l.jpg");
	Move("絵ＥＶ", 0, @0, @0, null, true);
	SetBlur("絵ＥＶ", true, 2, 300, 200, false);

	CreateTextureEXsub("絵演砂嵐", 1000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演砂嵐", 0, 1100, 1100, null, true);
	Shake("絵演砂嵐", 3000, 20, 10, 0, 0, 1000, null, false);

	CreateColorEX("絵演黒板", 1900, "000000");
	CreateColorEX("絵演黒隠", 1100, "000000");
	DrawTransition("絵演黒隠", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	MoveFTP1("@絵ＥＶ",3000,10,20);

//	Fade("@OnBG*", 0, 0, null, true);
	Fade("絵ＥＶ", 0, 1000, null, true);
	Fade("絵演黒隠", 0, 1000, null, true);
	Fade("絵演砂嵐", 0, 1000, null, true);

	Fade("絵板写弐", 50, 0, null, false);

//	Fade("@OnBG*", 0, 1000, null, true);

	Wait(300);

	Fade("絵演黒板", 300, 1000, null, true);

	MoveFTP1stop();
	Delete("絵演黒隠");
	Delete("絵ＥＶ");
	Delete("絵板写弐");
	Delete("絵演砂嵐");

	Wait(100);

{	Fw("fw蒼葉_通常_pain");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm54/5000060a01">
"!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
In a single moment&, my vision went to black&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);
	Wait(50);

//※ＳＥ：蓮を弾き飛ばす音
	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Delete("絵演黒板");
	Wait(30);
	CreatePlainSP("絵板写弐", 1900);
	Shake("絵板写弐", 500, 6, 7, 0, 0, 1000, null, false);

	FadeDelete("絵色白", 70, null, true);

	FadeDelete("絵板写弐", 500, null, false);

	Wait(500);


//※ＳＥ：蓮、キャインと悲鳴を上げる
	CreateSE("SE01","se動物_声_蓮悲鳴01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
&.&.&.The next thing I saw was myself pushing away Ren as he 
bit into my arm&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※白蒼葉を一瞬表示
	CreatePlainSP("絵板写弐", 1900);
	CreateTextureEX("絵ＥＶ", 1000, Center, Middle, "cg/ev/m/ev900もう１人の蒼葉_m.jpg");
	Move("絵ＥＶ", 0, @0, @0, null, true);
	SetBlur("絵ＥＶ", true, 2, 300, 200, false);

	CreateTextureEXsub("絵演砂嵐", 1000, Center, Middle, "cg/data/noize_01_00_0.png");
	Zoom("絵演砂嵐", 0, 1100, 1100, null, true);
	Shake("絵演砂嵐", 3000, 20, 10, 0, 0, 1000, null, false);

	CreateColorEX("絵演黒隠", 1100, "000000");
	DrawTransition("絵演黒隠", 1, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);

	Fade("絵ＥＶ", 0, 1000, null, true);
	Fade("絵演黒隠", 0, 1000, null, true);
	Fade("絵演砂嵐", 0, 1000, null, true);

	MoveFTP1("@絵ＥＶ",3000,10,20);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵板写弐", 50, 0, null, false);


	Wait(300);

	Fade("絵板写弐", 300, 1000, null, true);

	MoveFTP1stop();
	Delete("絵演黒隠");
	Delete("絵ＥＶ");
	Delete("絵板写弐");
	Delete("絵演砂嵐");

	Wait(100);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
It was him&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5460.nss"]

}
