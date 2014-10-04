//<continuation number="110">
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


scene dm5370.nss_MAIN
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
	
	#bg304041_5_東江タワー研究エリア研究室=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm5380.nss";

}


scene dm5370.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm018",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, null, "blind_01_00_1", true);

	SetVolumeEX("@dm*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
With the man's card&, the door opens&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景", 300, -1024, InBottom, "cg/bg/l/bg304041_5_東江タワー研究エリア研究室_l.jpg");

	CreateSE("SE02","se環境_擬音_培養タンク01L");
	MusicStart("SE02",1000,700,0,500,null,true);

	CreateSE("SE03","se環境_擬音_培養タンク01L");
	MusicStart("SE03",3000,300,-300,550,null,true);
	CreateSE("SE04","se環境_擬音_培養タンク01L");
	MusicStart("SE04",3000,300,300,700,null,true);


	Move("絵背景", 3000, @0, @288, Dxl2, false);
	Wait(500);
	FadeDelete("絵板写", 1000, null, true);

	Wait(2000);

	FadeDelete("絵背景", 500, null, true);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/7000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Before placing my foot through the door&, before sealing my fate&, I hesitate&.

The room is dim&, lit up by the flickering lights of 
various machines&. It feels eerie&, as if eyes are 
watching me from afar&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：水槽にズーム
	CreateTextureEX("絵背景", 105, -50, Middle, "cg/bg/l/bg304041_5_東江タワー研究エリア研究室_l.jpg");
	CreateTextureEX("絵背景弐", 100, -974, Middle, "cg/bg/l/bg304041_5_東江タワー研究エリア研究室_l.jpg");

	Move("絵背景", 1000, @50, @0, Dxl1, false);
	Fade("絵背景", 1000, 1000, null, true);
	Fade("絵背景弐", 0, 1000, null, true);
	Wait(500);
	Move("絵背景弐", 1000, @-50, @0, Dxl1, false);
	FadeDelete("絵背景", 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
There are large water tanks standing all around the room&, 
all with strange things inside them&.

Several living things twitch in the tanks&, and one has a 
massive clump of hair growing inside of it&.

They remain inside whatever liquid the tank holds&, 
pulsing&, alive&.

One of them holds something&.&.&. Something strangely like a 
human&, with a face&, arms&, and legs similar to what any 
person would have&.

But it clearly isn't one&. 

What in the world? What is that?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE02", 5000, 0, null);

	Fade("絵背景弐", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I enter the room with caution&, checking to see if anyone 
else is inside&.

All of this seems to be research equipment&.

Why would Toue have all of this?
What are these suspicious-looking specimens?

And where are all the people&.&.&.?

No other words except curses come to mind&.

I look into the tanks&, bewildered&, and I soon feel a gaze 
coming from somewhere inside of the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景弐", 200, @-50, @0, Dxl1, false);
	Fade("絵背景弐", 200, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
&.&.&.Something that looks like a mermaid&, with their lower 
half like a fish's with a tail and fins&, is looking at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 100, 0, null);

//※バン！と人魚がガラスを内側から叩く
	CreateSE("SE01","se人体_衝撃_叩く03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 500, 0, 20, 0, 0, 500, null, false);
	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/7000020a01">
"-!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
The pure white mermaid widens its eyes and knocks on the 
glass&.

It flaps its mouth open and closed&, as if trying to speak 
to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/7000030a01">
"Wha-What&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_効果_おどろおどろ01");
	MusicStart("SE01",5000,300,0,2000,null,true);

	DeleteFw();
	FadeDelete("絵背景弐", 250, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
The other things in the water tanks&.&.&.

It's either my imagination&, or they're staring at me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景", 105, 0, Middle, "cg/bg/m/bg304041_5_東江タワー研究エリア研究室_m.jpg");

	Move("絵背景", 20000, @-512, @0, AxlDxl, false);
	Fade("絵背景", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//※標本
//【セイ】
<voice name="セイ" class="セイ" src="voice/dm53/7000040b14">
"&.&.&.You&.&.&. really- came&.&.&."

//※標本
//【セイ】
<voice name="セイ" class="セイ" src="voice/dm53/7000050b14">
"I was- wait ing&.&.&. always&.&.&."

//※標本
//【セイ】
<voice name="セイ" class="セイ" src="voice/dm53/7000060b14">
"Hurry&, to- me&.&.&."

//※標本
//【セイ】
<voice name="セイ" class="セイ" src="voice/dm53/7000070b14">
"Destroy -me&.&.&."

//※標本
//【セイ】
<voice name="セイ" class="セイ" src="voice/dm53/7000080b14">
"With your po -wer&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Delete("絵背景");

	Fw("fw蒼葉_通常_hard2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/7000090a01">
"&.&.&.&.&.!!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	SetVolumeEX("SE*", 1000, 0, null);

	CreateColorSP("絵黒幕", 5000, "BLACK");

	CreateSE("SE01","se戦闘_動作_走る01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	DrawTransition("絵黒幕", 200, 0, 1000, 100, Dxl1, "cg/data/slide_01_01_0.png", true);

	Wait(200);

	CreateSE("SE02","se人体_衝撃_叩く02");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorEXadd("絵フラッシュ白", 6000, "FFFFFF");
	Fade("絵フラッシュ白", 200, 1000, Dxl1, true);

	Delete("絵背景");

	Wait(30);

	FadeDelete("絵フラッシュ白", 100, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
When I tried to leave the room&, something hit against me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSPover("黒", 2000, "BLACK");

	CreateTextureSP("絵背景", 1000, -1016, -75, "cg/ev/l/evf02モルヒネ暗闇に佇む_l.jpg");
	CreateTextureSP("絵背景弐", 800, Center, Middle, "cg/ev/evf02モルヒネ暗闇に佇む.jpg");
	CreateTextureSP("絵ロゴ", 700, Center, Middle, "cg/ef/eflロゴモルヒネ.jpg");

	Move("絵背景", 500, @0, @-80, Dxl1, false);

	FadeDelete("絵黒幕", 500, null, true);

	FadeDelete("黒", 500, null, true);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/7000100a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
Due to the distraction of the water tanks&, a black figure 
had crept its way behind me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Move("絵背景", 500, @300, @0, Dxl3, false);
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
And now there are more of them!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 200, 20, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm53/7000110a01">
"-! Hey&, what-! &.&.&.Let go&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1200,null,false);

	CreatePlainSP("絵板写", 5000);
	Shake("絵板写", 300, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

	CreateSE("SE02","se人体_動作_衣擦れ02");
	MusicStart("SE02",0,700,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
I try to escape&, but they catch me and hold me down to the floor&.

Who are these guys&.&.&.!?

When I turn my head to see their faces&, I see a certain 
design on their jacket&.

That's&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	FadeDelete("絵背景*", 500, Dxl1, true);

	Wait(200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
Morphine&.&.&.!!

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm5380.nss"]

}
