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


scene dm3140.nss_MAIN
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
	#bg303021_5_娯楽施設クラブフロア=true;
	#bg303022_5_娯楽施設クラブフロア=true;
	#bg303023_5_娯楽施設クラブフロア=true;
	#bg303041_5_娯楽施設ＶＩＰルーム=true;
	#bg303042_5_娯楽施設ＶＩＰルーム=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3150.nss";

}


scene dm3140.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//おがみ：同dm1140の類似シーンに準拠
/*
	PrintBG("上背景", 30000);

	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);


	CreateTextureEX("絵背景", 150, Center, Middle, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");
	CreateTextureEX("絵背景弐", 100, Center, Middle, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");
	CreateColorEXadd("絵色白", 5000, "WHITE");
	CreateColorEXadd("絵色赤", 5000, "RED");
	CreateColorEXadd("絵色緑", 5000, "GREEN");
	CreateColorEXadd("絵色青", 5000, "BLUE");

//覇：以下必要であればプロセス化
	$Fadetime = 400;
	$Waittime = 50;

	Zoom("絵背景*", 0, 2000, 2000, null, true);
	Move("絵背景", 0, @-512, @-288, null, true);
	Move("絵背景弐", 0, @512, @288, null, true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("@dm*", 1000, 450, null);


	Fade("絵色白", 500, 1000, Dxl1, true);
	Fade("絵背景*", 0, 1000, Null, true);
	Move("絵背景", 3000, 0, 0, null, false);
	Fade("絵色白", 500, 0, Dxl1, true);
	Fade("絵色赤", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("絵色赤", $Fadetime, 0, Dxl1, true);
	Fade("絵色青", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("絵色青", $Fadetime, 0, Dxl1, true);
	Fade("絵色緑", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("絵色緑", $Fadetime, 0, Dxl1, true);
	Fade("絵色白", 500, 1000, Dxl1, true);

	Delete("絵背景");

	Move("絵背景弐", 3000, 0, 0, null, false);
	Fade("絵色白", 500, 0, Dxl1, true);
	Fade("絵色赤", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("絵色赤", $Fadetime, 0, Dxl1, true);
	Fade("絵色青", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("絵色青", $Fadetime, 0, Dxl1, true);
	Fade("絵色緑", $Fadetime, 300, Dxl1, true);
	Wait($Waittime);
	Fade("絵色緑", $Fadetime, 0, Dxl1, true);
	Fade("絵色白", 500, 1000, Dxl1, true);

	Delete("絵背景弐");

	FadeDelete("絵色*", 1000, Dxl1, false);
	Sei(6000,1000,true);

*/
//光麻薬、セイの力エフェクト（千代子


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);

//ライト準備===========================================================
	CreateColorEXadd("絵色ライト1", 1109, "883355");
	CreateColorEXadd("絵色ライト2", 1109, "448800");
	CreateColorEXadd("絵色ライト3", 1109, "005588");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトタイム = 300;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive");
	SetAlias("プロセスライト１","プロセスライト１");

	CreateColorSP("プロセス洗脳色", 10, "000000");
	CreateTextureSP("プロセス洗脳下地", 11, 0, 0, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");


	CreateLoopFade("プロセス洗脳光",200,true,AddRender,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);
	CreateLoopFade2("プロセス洗脳レーザー",150,true,false,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg);

	CreateTextureEX("点滅", 1000, 0, 0, "cg/bg/bg303022_5_娯楽施設クラブフロア.jpg");
	//Fade("プロセス洗脳点滅", 0, 1000, null, true);

	//WaitKey();
	CreateBlink("点滅");

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("プロセス洗脳*","絵Suf");
	Zoom("絵Suf", 0, 1500, 1500, null, true);
	Zoom("点滅", 0, 1500, 1500, null, true);
	Request("絵Suf", Smoothing);
	Request("点滅", Smoothing);

	Move("絵Suf", 0, 150, @0, null, true);
	Move("点滅", 0, 150, @0, null, true);


	GoLoopFade("@プロセス洗脳光",100);
	GoLoopFade2("@プロセス洗脳レーザー",71);
	Request("@プロセスライト１", Start);


	Delete("上背景");

//表示開始

	SoundPlay("@dm022",0,450,true);
	SetVolumeEX("@dm022", 1000, 800, null);


	Move("絵Suf", 6000, -150, @0, null, false);
	Move("点滅", 6000, -150, @0, null, false);

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);


	Wait(4000);
	Wait(1000);

	CreatePlainSP("絵スクリーン", 3000);
	Move("絵Suf", 0, 0, @0, null, true);
	Move("点滅", 0, 0, @0, null, true);
	Zoom("絵Suf", 0, 1000, 1000, null, true);
	Zoom("点滅", 0, 1000, 1000, null, true);


	Fade("絵スクリーン", 500, 0, null, true);
	Delete("絵スクリーン");

	Wait(500);
	SetVolumeEX("@dm022", 3000, 450, null);
	//DeleteBlink("@絵背景");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000010a01">
"&.&.&.Whoa&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The moment I walk onto the dance floor I begin to feel 
dizzy&.

The heavy vibrations from the music and low bass&, the 
electronic sounds piercing my eardrums&.&.&. it all feels 
so awful&.

The lights flash in an unsteady pattern so I can't keep my eyes focused&. All in all it was an awful place to be&.

Is this "getting high on lights"?

The floor is filled with people dancing&.

I bet they've been here for a long time&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm31/4000020a06">
"Aoba&, are you okay?"

{	Fw("fw蒼葉_通常_hard");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000030a01">
"&.&.&.For now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);


	SetVolumeEX("@dm022", 1000, 250, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵Suf*");
	DeleteBlink("点滅");

	Request("@プロセス洗脳光", Stop);
	Request("@プロセス洗脳レーザー", Stop);
	Delete("@プロセス洗脳*");
//	Request("@プロセスライト１", Stop);
//	Delete("@プロセスライト１");
//	Delete("絵色ライト*");

	CreateLoopFade("プロセス洗脳光",200,true,AddRender,cg/bg/bg303041_5_娯楽施設ＶＩＰルーム.jpg,cg/bg/bg303041_5_娯楽施設ＶＩＰルーム.jpg,cg/bg/bg303041_5_娯楽施設ＶＩＰルーム.jpg);


	CreateMask("mask01", 2500, center,middle,"cg/bg/x/bg303041_5_娯楽施設ＶＩＰルーム_mask.png",false);

	CreateColorSP("プロセス洗脳光黒", 150, "000000");
	Fade("プロセス洗脳光黒", 0, 200, null, true);


	CreateSurface("mask01/絵Suf",300,0,0,false);
	SetAlias("mask01/絵Suf", "mask01/絵Suf");
	SetSurface("プロセス洗脳光*","mask01/絵Suf");
	CreateTextureSP("絵背景suf", 100, Center, Middle, "cg/bg/bg303042_5_娯楽施設ＶＩＰルーム.jpg");
	SetSurface("絵背景suf","mask01/絵Suf");
	//Zoom("絵Suf", 0, 1500, 1500, null, true);
	Request("mask01/絵Suf", Smoothing);
	Move("@プロセス洗脳*", 0, @0, @0, null, true);

	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/beam_03_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/beam_03_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/beam_03_00_0.png", true);

	GoLoopFade("@プロセス洗脳光",100);





	OnBG(10,"bg303041_5_娯楽施設ＶＩＰルーム");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg303042_5_娯楽施設ＶＩＰルーム.jpg");
	CreateTextureSP("絵背景弐", 90, Center, Middle, "cg/bg/bg303041_5_娯楽施設ＶＩＰルーム.jpg");
	FadeBG(0,true);

	CreateColorSP("絵演黒隠", 60, "000000");
	DrawTransition("絵演黒隠", 0, 0, 500, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵ＥＶ", 0, 1000, null, true);

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
The music blasting throughout the room makes it a bit hard to hear Ren&.

While taking glances at the floor&, we walked up to the 
second floor by a staircase near the door&.

On the second floor are chairs and tables&, placed so one 
can look down on the dance floor&.

A man by the railing guides us to our seats&.

{
	CreateSE("SE32","se人体_動作_衣擦れ17");
	MusicStart("SE32",0,700,0,800,null,false);
	CreateSE("SE40","se人体_動作_衣擦れ15");
	MusicStart("SE40",0,700,0,1000,null,false);
}
Mink plops down on the sofa and crosses his legs&.
I sat next to him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	St("C",1740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/4000040a05">
"Well&, go have some fun&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
It surprises me that Mink would say something like that&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000050a01">
"Have fun&.&.&.?<?>
{
Fw("fw蒼葉_通常_rage");} 
 What did we even come here for?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",1740, @0,@0,"buミンク_通常_smile");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/4000060a05">
"Stretch out your wings a bit&."


{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000070a01">
"Huh&.&.&.? Are you messing with me?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
A slight grin rises to Mink's face&.

Just being around that dance floor has me on edge&.

I don't want to stay here too long&.

I'd put up with it if we were here for a reason&, but to 
stretch out my wings? That's not funny&.

{
	CreateSE("SE32","se人体_動作_衣擦れ01");
	MusicStart("SE32",0,500,0,1000,null,false);
	Wait(500);
	CreateSE("SE33","se人体_動作_抱く01");
	MusicStart("SE33",0,600,0,1000,null,false);
	CreatePlainSP("絵板写", 20000);
	Shake("絵板写", 150, 0, 3, 0, 0, 500, null, true);
	Delete("絵板写");
}
When I get off the sofa&, my feet stagger&.

It's because of these lights and sounds&.&.&. I feel sick&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",1740, @0,@0,"buミンク_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/4000080a05">
"High already? This can't be your first time with drugs&."

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000090a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ05");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

	CreateColorEX("絵色黒", 10000, "000000");
	Fade("絵色黒", 500, 1000, null, true);

	SetVolumeEX("@dm022", 1000, 700, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
I balance myself with my hands on the back of the sofa 
and shut my eyes&, so I don't see the floor below me&.

But still&, the lights flash through my closed eyelids&.

The sounds go through my ears either way&.&.&. And the 
sickness in my stomach grows while a headache starts up&.

&.&.&.Shit&. I really am high&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE32","se物体_物_漁る01");
	MusicStart("SE32",0,1000,0,1000,null,false);
	SetVolumeEX("SE*", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]
I take out my meds from my bag and swallow just a few of 
them&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteAllSt(200,true);

	//SetVolumeEX("@dm*", 1000, 1, null);
	SetVolumeEX("@dm022", 1000, 1, null);
	SetVolumeEX("SE*", 200, 0, null);

	CreateColorEX("絵薄黒", 6000, "000000");
	CreateColorSP("絵黒帯", 5800, "000000");
	DrawTransition("絵黒帯", 0, 700, 700, 100, null, "cg/data/slide_05_00_0.png", true);

	CreateTextureSP("絵立絵2", 5700, Center, Middle, "cg/fu/fuミンク_通常正面_normal.png");
	CreateTextureSPsub("絵立絵", 5700, Center, Middle, "cg/fu/fuミンク_通常正面_normal.png");
	Move("絵立絵", 0, @0, @30, null, true);

	CreateTextureSP("絵朧用", 5500, -250, 250, "cg/bg/bg303041_5_娯楽施設ＶＩＰルーム.jpg");

	Request("絵立絵", Smoothing);
	Move("絵立絵", 0, @0, @40, null, true);

	Zoom("絵立絵*", 0, 2000, 2000, null, true);
	Zoom("絵朧用", 0, 2000, 2000, null, true);

	SetShade("絵朧用", MEDIUM);

	SetBlur("絵立絵2", true, 2, 500, 1200, false);
	SetBlur("絵立絵", true, 2, 500, 1200, false);

	MoveFTP1("@絵立絵*",2000,1,1);
	MoveFTP2("@絵朧用",3000,4,2);

	CreateSE("SE01","se人体_心臓_鼓動01L");
	MusicStart("SE01",0,500,0,500,null,true);

//	Fade("絵薄黒", 0, 800, null, true);
	FadeDelete("絵色黒", 500, Dxl1, true);

	Wait(500);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
When I raise my head&, I meet Mink's eyes&.

His cold stare sends shivers down my spine&.

If I was in a different situation&, I could easily provoke 
him&.&.&. But I can't right now&.

His blank expression pierces me like needles&.

Deeper and deeper&.

It reaches all the way into the depths of my heart&, and 
sinks in&.&.&. deeper&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreatePlainSP("絵板写", 20000);
	MoveFTP1stop();
	MoveFTP2stop();
	Delete("絵立絵");
	Delete("絵立絵2");
	Delete("絵朧用");
	Delete("絵薄黒");
	Delete("絵黒帯");

//	CreateTextureSP("ev_yure", 700, center, middle, "cg/bg/bg303042_5_娯楽施設ＶＩＰルーム.jpg");
//	Zoom("ev_yure", 0, 1020, 1020, null, true);
//	Fade("ev_yure", 0, 500, null, true);
//	MoveFTP1("@ev_yure",10000,6,4);

	Lens_Set("レンズ１",5000,-1000,-1000,3000,3000);
	Lens_Start(3000);

//	Shake("絵背景", 500, 5, 5, 0, 0, 500, null, false);
	FadeDelete("絵板写", 500, null, true);

	Delete("絵背景弐");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
I avert my eyes from Mink's&.
But I can still feel him looking at me&.

Still looking at me&.

Still&.&.&.

Still&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 7000);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",6102);
	TemptationAobaSet("絵演黒蒼葉誘惑",6100,Center,-240,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	//CreateColorSP("絵色黒", 6110, "000000");
	CreateColorSP("絵演黒蒼葉誘惑黒隠", 6110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 750, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE01T","se人体_心臓_鼓動01");
	MusicStart("SE01T",0,700,0,1000,null,false);
	TemptationAobaIn("絵板写");
	TemptationAobaOut(100,true);
	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
&.&.&.Who?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000100a01">
"&.&.&.Ughhhhaahh!"

{	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm31/4000110a05">
"&.&.&.Hey&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 7000);

	DeleteAllSt(0,true);

	TemptationNoizSet("絵演黒蒼葉誘惑砂嵐覆",6102);
	TemptationAobaSet("絵演黒蒼葉誘惑",6100,Center,-210,"cg/ev/l/ev900もう１人の蒼葉_l.jpg",2000,2000);

	//CreateColorSP("絵色黒", 6110, "000000");
	CreateColorSP("絵演黒蒼葉誘惑黒隠", 6110, "000000");
	DrawTransition("絵演黒蒼葉誘惑黒隠", 1, 0, 600, 100, null, "cg/data/slide_05_00_0.png", true);
	Fade("絵演黒蒼葉誘惑", 0, 1000, null, true);

	TemptationNoizFade("絵演黒蒼葉誘惑砂嵐覆",0,null,true);
	Position("@絵演黒蒼葉誘惑", $TANx1, $TANy1);
	CreateSE("SE02T","se人体_心臓_鼓動02L");
	MusicStart("SE02T",3000,700,0,600,null,true);
	CreateSE("SE01T","se人体_心臓_鼓動01");
	MusicStart("SE01T",0,700,0,1000,null,false);
	TemptationAobaIn("絵板写");
	TemptationAobaOut(100,true);
	TemptationDelete("@絵演黒蒼葉誘惑黒隠");
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
Watching me&.

Someone's been watching me&.

This whole time&.&.&.!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000120a01">
"Ahhhhhhhh!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE02T", 2000, 200, null);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 21000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateColorSP("絵色黒", 15000, "000000");

	Delete("絵黒幕");
	Delete("絵背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
I want to escape from their gaze; I bolt down the stairs 
from the private room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(32);

	Delete("プロセス*");
	Delete("絵Suf");
	DeleteBlink("点滅");

	OnBG(10,"bg303021_5_娯楽施設クラブフロア");
	FadeBG(0,true);
//	CreateTextureSP("ev_yure", 100, center, middle, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");
//	Zoom("ev_yure", 0, 1020, 1020, null, true);
//	Fade("ev_yure", 0, 500, null, true);
//	MoveFTP1("@ev_yure",4000,6,4);

//ライト準備===========================================================
	CreateColorEXadd("絵色ライト1", 1109, "883355");
	CreateColorEXadd("絵色ライト2", 1109, "448800");
	CreateColorEXadd("絵色ライト3", 1109, "005588");
	DrawTransition("絵色ライト1", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト2", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);
	DrawTransition("絵色ライト3", 0, 300, 300, 800, null, "cg/data/slide_02_00_0.png", true);

	$ライトナット名１ = @絵色ライト1;
	$ライトナット名２ = @絵色ライト2;
	$ライトナット名３ = @絵色ライト3;
	$ライトナット透明度 = 1000;
	$ライトタイム = 500;

	CreateProcess("プロセスライト１", 150, 0, 0, "ColorLightLoopLive2");
	SetAlias("プロセスライト１","プロセスライト１");

	CreateColorSP("プロセス洗脳色", 10, "000000");
	CreateTextureSP("プロセス洗脳下地", 11, 0, 0, "cg/bg/bg303021_5_娯楽施設クラブフロア.jpg");

	CreateLoopFade("プロセス洗脳光",200,true,AddRender,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg,cg/bg/bg303023_5_娯楽施設クラブフロア.jpg);
	CreateLoopFade2("プロセス洗脳レーザー",150,true,false,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg,cg/bg/bg303022_5_娯楽施設クラブフロア.jpg);

	CreateTextureEX("点滅", 1000, 0, 0, "cg/bg/bg303022_5_娯楽施設クラブフロア.jpg");
	//Fade("プロセス洗脳点滅", 0, 1000, null, true);

	//WaitKey();
	CreateBlink("点滅");

	CreateSurface("絵Suf",300,0,0,false);
	SetAlias("絵Suf", "絵Suf");
	SetSurface("プロセス洗脳*","絵Suf");
	Request("絵Suf", Smoothing);
	Request("点滅", Smoothing);

	GoLoopFade("@プロセス洗脳光",100);
	GoLoopFade2("@プロセス洗脳レーザー",71);
	Request("@プロセスライト１", Start);

	SetVolumeEX("@dm022", 3000, 450, null);

	DrawDelete("絵色黒", 300, 100, null, "slide_01_03_1", true);

	Delete("絵黒*");
//	Delete("絵演黒*");
//	Delete("絵ＥＶ");

	Wait(300);

//※ダンスフロアに下りる蒼葉。男にぶつかってよろける。
	CreateSE("SE01","se人体_衝撃_叩く02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景", 200, 50, 50, 0, 0, 500, null, true);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000130a01">
"&.&.&.&.&."

{	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm31/4000140e22">
"Hey now&, you okay?"

{
	SetVolumeEX("SE02T", 1000, 400, null);
	SetFrequency("SE02T", 1000, 800, null);
	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000150a01">
"&.&.&.&.&."

{	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm31/4000160e22">
"Keep your head up! Is this your first time? You look
 pretty messed up&."

{
	SetVolumeEX("SE02T", 1000, 600, null);
	SetFrequency("SE02T", 1000, 1000, null);
	Fw("fw蒼葉_通常_pain2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000170a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwm若者C_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm31/4000180e22">
"Hey&, hey&. They say this light makes you more sensitive if
 you're a guy&. Is it the same for you?"

{	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm31/4000190e22">
"So why don't we test it out for a bit?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SEL01","se擬音_精神_超音波01L");
	MusicStart("SEL01",3000,300,0,600,null,true);

//※服を触る音、ごそごそ
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE02T", 1000, 800, null);
	SetFrequency("SE02T", 1000, 1200, null);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0191]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000200a01">
"&.&.&.&.&.!"

{
	SetVolumeEX("SEL01", 1000, 900, null);
	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm31/4000210e22">
"Okay now&, don't resiiiist&. Just try to relax&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SEL01", 1000, 1500, null);

//※服を触る音、ごそごそごそ
	CreateSE("SE01","se人体_動作_衣擦れ03");
	MusicStart("SE01",0,700,0,1000,null,false);

	SetVolumeEX("SE02T", 1000, 1500, null);
	SetFrequency("SE02T", 1000, 1600, null);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000220a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 150, 0, null);

//※白蒼葉の幻影が一瞬パッと映る

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateColorEX("絵色黒", 9000, "000000");
	CreatePlainEX("絵板写", 8990);
	SetTone("絵板写", NegaPosi);
	CreateColorEXadd("絵フラッシュ白", 9000, "FFFFFF");

	Fade("絵色黒", 0, 1000, null, true);

	Wait(50);

	Fade("絵板写", 0, 1000, null, true);
	Delete("絵色黒");

	Wait(50);

	Fade("絵フラッシュ白", 0, 1000, null, true);
	Delete("絵色黒");
	Delete("絵板写");

	Wait(100);

	FadeDelete("絵フラッシュ白", 600, null,true);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0201]
//※力発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000230a01">
"&.&.&.Don't touch me&."

{	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm31/4000240e22">
"Hm?"

{	Fw("fw蒼葉_通常力行使_serious");}
//※力発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000250a01">
"I said don't touch me&, let go&."

{	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm31/4000260e22">
"Eh? &.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常力行使_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//※力発動
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm31/4000270a01">
"Let go&."

{	Fw("fwm若者C_通常_normal");}
//【男性客Ａ】
<voice name="男性客Ａ" class="男性客Ａ" src="voice/dm31/4000280e22">
"&.&.&.&.&.&.O- kay&."

//※男性客、フラフラと立ち去っていく
//※余分かも知れないので↓はコメントアウトします。
{//	Fw("fw蒼葉_通常_shock4");
}
//【蒼葉】
//<voice name="蒼葉" class="蒼葉" src="voice/dm53/4000070b01">
//「…………」


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(300);

	CreatePlainSP("絵板写", 5000);
	CreateSE("SE01","se人体_衝撃_転倒02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵板写", 500, 0, 5, 0, 0, 1000, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

	Wait(1000);

//※蒼葉、その場にどさっと倒れる
//※画面暗転

	ClearFadeAll(1000, true);

	Wait(2000);

//※次ファイル["dm3150.nss"]

}
