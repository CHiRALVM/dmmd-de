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


scene dm3230_vs.nss_MAIN
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
	$GameName = "dm3230sl.nss";

}


scene dm3230_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm007a",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg306021_5_倉庫内部入り口側");
	FadeBG(0,true);

	St("C",740, @0,@0,"st悪島_通常_laugh");
	FadeSt("C",0,true);

	DrawDelete("上背景", 300, 100, Dxl1, "zzex_circle_01_00_1", true);

	St("C",740, @0,@0,"st悪島_通常_shout");
	FadeStPro("C", 5600, 200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/3000010b08">
"Hahahahahahahhaaaa!!! If you want to die so badly&, then
 I'll kill you!! KILL&, KILL&, KILL!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Akushima yells in a triumphant voice and sets the police 
loose on us&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景弐", 90, Center, Middle, "cg/bg/m/bg306021_5_倉庫内部入り口側_m.jpg");
	CreateColorSPadd("絵色白", 3000, "WHITE");

	St("C",740, @0,@0,"bu悪島_通常_shout");
	FadeSt("C",0,true);

	CreateSE("SE01","se戦闘_銃_構える01複数");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵色白", 300, Axl3, false);
	FadeDelete("絵板写", 300, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
&.&.&.But the officers on both of his sides turn around 
and&, for some reason&, point their guns towards him&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu悪島_通常_sigh");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/3000020b08">
"Ahh!? Hey&, what are you bastards doing!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 0, 0, null);

//※警官の１人が悪島へ威嚇射撃。メガホンが落ちる。
	CreateSE("SE01","se戦闘_銃_発砲01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 150, 1000, Dxl2, true);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg306021_5_倉庫内部入り口側.jpg");

	OnBG(10,"bg306021_5_倉庫内部入り口側");
	FadeBG(0,true);

	DeleteSt("C", 0,true);

	Fade("絵背景弐", 0, 0, null, true);

//	Shake("絵背景", 250, 20, 20, 0, 0, 500, Axl3, false);
	Fade("絵色白", 200, 0, Dxl2, false);

	Wait(800);

//覇：下記メガホンの音希望
	CreateSE("SE01","se物体_メガホン_落とす");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(200);
//	SetVolumeEX("SE01", 100, 0, null);

	CreateSE("SE02","se物体_メガホン_鳴る01");
	MusicStart("SE02",0,700,0,800,null,false);

	Wait(600);

	Fw("fw悪島_通常メガホンなし_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/3000030b08">
"Oooooohhhhhh!?!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
One of the policemen opens fire on him&. The megaphone falls
from Akushima's hands&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw悪島_通常メガホンなし_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/3000040b08">
"What! How dare you do this!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg306031_5_倉庫内部荷物側.jpg");

	St("C",740, @0,@0,"stミンク_通常_pride");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 300, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0061]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/3000050a05">
"You've been doing some pretty bad things up until now&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	DeleteSt("C", 200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
Akushima's face turns a different color upon hearing 
Mink's words&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw悪島_通常メガホンなし_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/3000060b08">
"&.&.&.Hey&. Impossible&. You fucker-"

{	St("C",740, @0,@0,"stミンク_通常_normal2");
	FadeSt("C",200,true);}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/3000070a05">
"What?"

{Fw("fw悪島_通常メガホンなし_shock");}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/3000080b08">
"What the hell did you dooooo!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stミンク_通常_pride");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/3000090a05">
"All I did was suggest something to your boss and drop him
 a little coin&."


{Fw("fw悪島_通常メガホンなし_shout");}
//【悪島】
<voice name="悪島" class="悪島" src="voice/dm32/3000100b08">
"MOTHERFUCKEEEERRRRR!!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm009",0,450,true);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1300,null,false);
	DeleteSt("C", 100,true);

	Wait(200);

	CreateWindowEX("絵窓", 0, 0, 1024, 576, false);
	CreateColorSPadd("絵窓/絵煙白", 2000, "WHITE");
	CreateSE("SE01","se戦闘_衝撃_爆発煙幕弾01");
	MusicStart("SE01",0,700,0,1000,null,false);
	DrawTransition("絵窓/絵煙白", 0, 0, 400, 500, null, "cg/data/effect_01_00_0.png", true);
	Wait(800);

	DrawTransition("絵窓/絵煙白", 0, 200, 600, 500, null, "cg/data/effect_01_00_0.png", true);
	Wait(300);

	DrawTransition("絵窓/絵煙白", 0, 600, 1000, 500, null, "cg/data/effect_01_00_0.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg306031_5_倉庫内部荷物側.jpg");

	DeleteAllSt(0,true);

	Fade("絵色白", 200, 0, Dxl2, true);

	CreatePlainSP("絵霞", 500);
	SetShade("絵霞", MEDIUM);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
As if to stop Akushima's screaming&, Mink takes something 
out of the bag full of weapons&.

Bam! And in the blink of an eye&, white smoke fills the 
room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DrawTransition("絵窓/絵煙白", 500, 1000, 300, 1000, null, "cg/data/effect_01_00_0.png", false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
{	Fw("fwmミンクチームA_通常_normal");}
//【ミンクチームＡ】
<voice name="ミンクチームＡ" class="ミンクチームＡ" src="voice/dm32/3000110e45">
"Fuck yeah!"

{	Fw("fwmミンクチームB_通常_normal");}
//【ミンクチームＢ】
<voice name="ミンクチームＢ" class="ミンクチームＢ" src="voice/dm32/3000120e46">
"What now&, huh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se環境_戦闘_銃撃戦01L");
	MusicStart("SE01",0,500,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
The sounds of gunshots and angry yells fill the white 
room&.

It's starting&.&.&.!

I start to run away and hide behind one of the wooden 
boxes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※銃の発砲音
	CreateSE("SE01","se戦闘_銃_発砲01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("絵色白", 5000, "WHITE");
	Fade("絵色白", 200, 1000, Dxl3, true);
	DrawTransition("絵色白", 150, 1000, 0, 100, Dxl3, "cg/data/circle_14_00_0.png", true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/3000130a01">
"&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
A bullet grazes past my face and I turn pale&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 300, 0, 1000, 100, Dxl2, "cg/data/slide_01_02_0.png", true);
	DrawTransition("絵窓/絵煙白", 0, 300, 200, 1000, null, "cg/data/effect_01_00_0.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg306031_5_倉庫内部荷物側.jpg");
	CreateTextureSP("絵背景弐", 110, Center, Middle, "cg/bg/bg306031_5_倉庫内部荷物側.jpg");

//覇：シェードでよりぼやかす為にlでなくズームで対応しています。
	Request("絵背景*", Smoothing);
	Zoom("絵背景*", 0, 2000, 2000, null, true);
	SetShade("絵背景*", MEDIUM);

	Delete("絵霞");

	DrawDelete("絵黒幕", 300, 100, Dxl2, "slide_01_02_1", true);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);
	Shake("絵背景弐", 100, 15, 15, 0, 0, 500, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
I feel as if my legs will fail me and I search for an 
outline of a box and run over to it&.

I crouch down&, my back to the side of it&.

If that bullet had hit&.&.&.
My body chills just from the thought of it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
Mink told me to protect myself&.&.&.

What do I do if he just leaves me like this&.&.&.!?

I'm different from them&. I've never done anything like 
risk my life in a gunfight&.

Would I kill people?
With this gun?

If not&, I'll be the one killed&.
That's what it means to protect yourself&.

But&.&.&.

That's easier said than done&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/3000140a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_一歩02");
	MusicStart("SE01",0,700,0,1300,null,false);
	Shake("絵背景弐", 100, 10, 10, 0, 0, 500, Dxl1, true);

//※ミンクが隣に滑りこんでくる
	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/3000150a01">
"&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl2, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg306021_5_倉庫内部入り口側.jpg");
	CreateTextureSP("絵背景弐", 110, Center, Middle, "cg/bg/bg306021_5_倉庫内部入り口側.jpg");

	Request("絵背景*", Smoothing);
	Zoom("絵背景*", 0, 2000, 2000, null, true);
	SetShade("絵背景*", MEDIUM);

	DrawDelete("絵黒幕", 200, 100, Dxl2, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
Someone bumps into me from the smoke&.

{
	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Shake("絵背景弐", 100, 5, 0, 0, 0, 500, Dxl1, true);
}
I tried to get away as fast as I could&, but I was held by 
the arm&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/3000160a05">
"Hey&, wait&."

{	St("C",3740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",1000,true);
	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/3000170a01">
"Mink&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
It was Mink&, holding a submachine gun&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",3740, @0,@0,"buミンク_通常_angry2");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/3000180a05">
"Are you going to hide the whole time? What about your
 gun?"

{	Fw("fw蒼葉_通常_worry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/3000190a01">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",3740, @0,@0,"buミンク_通常_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm32/3000200a05">
"Are you not going to use it&.&.&.or do you just not want to?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm3230sl.nss"]

}
