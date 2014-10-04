//<continuation number="260">
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


scene dm2110.nss_MAIN
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
	#bg302021_5_グリッター居間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2120.nss";

	//▼頭痛レベル設定
	$HALevel=2;

}


scene dm2110.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

//あきゅん「演出：瞬き演出」
	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302021_5_グリッター居間天井");
	FadeBG(0,true);

/*
	CreateTextureSP("絵霞", 100, Center, Middle, "cg/bg/bg302021_5_グリッター居間天井.jpg");

	SetShade("絵霞", MEDIUM);

	Delete("上背景");
	Fade("絵色黒", 2000, 0, null, true);

	Wait(300);

	Fade("絵色黒", 0, 1000, null, false);
	DrawTransition("絵色黒", 100, 0, 1000, 50, Dxl1, "cg/data/slide_05_00_0.png", true);
	Fade("絵霞", 0, 500, null, true);
	Wait(30);
	DrawTransition("絵色黒", 100, 1000, 0, 50, Dxl1, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	Fade("絵色黒", 0, 1000, null, false);
	DrawTransition("絵色黒", 100, 0, 1000, 50, Dxl1, "cg/data/slide_05_00_0.png", true);
	Wait(30);
	DrawTransition("絵色黒", 100, 1000, 0, 50, Dxl1, "cg/data/slide_05_00_0.png", true);


	Wait(100);

	Fade("絵色黒", 0, 1000, null, false);
	DrawTransition("絵色黒", 100, 0, 1000, 50, Dxl1, "cg/data/slide_05_00_0.png", true);
	Wait(30);
	Delete("絵霞");
	DrawTransition("絵色黒", 100, 1000, 0, 50, Dxl1, "cg/data/slide_05_00_0.png", true);
	Delete("絵色黒");

	Wait(500);
*/

	Delete("上背景");

	DrawTransition("絵色黒", 500, 1000, 700, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	DrawTransition("絵色黒", 500, 700, 1000, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);
	Wait(1000);
	DrawTransition("絵色黒", 1500, 1000, 0, 200, AxlDxl, "cg/data/slide_05_00_0.png", true);

	Wait(500);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000010a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I push up my heavy eyelids and blink several times&.

&.&.&.What time is it?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//あきゅん「コイル：ここ素材あり？」
//覇：コイル演出は後回し
	CreateSE("SE01","se物体_コイル_操作音01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I raise my hand and look at my Coil's clock&. It's midnight&.

So I sat down on the sofa and fell asleep&, just like that&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//覇：頭痛演出
	HAFade(2000, 0,true);

//	Wait(200);

	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000020a01">
"&.&.&.Ngh&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I can feel a dull pain in my head&.

I have a feeling I had some kind of dream&.&.&. but I can't 
remember what it was&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
My throat is dry&.
Let's just get some water&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(500,true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
When I rise from the sofa&, I realize Ren isn't around&.

Huh? Where did he go?

He's supposed to be always at my feet&.

{
	CreateSE("SE01","se物体_コイル_操作音03");
	MusicStart("SE01",0,200,0,1000,null,false);
}

&.&.&.I heard something just now&.

Was it from the second floor?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 1000, 0, null);

//	CreateSE("SE02","se人体_足音_歩く05");
//	MusicStart("SE02",0,350,0,1000,null,false);
	OnBG(10,"bg302021_5_グリッター居間");
	FadeBG(1000,true);
//	SetVolumeEX("SE*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0028]
I climb the stairs and see Noiz's on the sofa&.

On the second floor is a small living room&, with a 
television and a bar counter&.

It looks like there are rooms heading down the hallway&.

But&.&.&. what's Noiz doing?

Even if he did notice me walking up the stairs&, he doesn't show it and continues facing the other way&.

Maybe he's the type who doesn't notice his surroundings 
when he concentrates&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

	CreatePlainSP("絵板写", 5000);
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/m/bg302021_5_グリッター居間_m.jpg");
	Move("絵背景", 0, @0, @-60, null, true);

	Move("絵背景", 500, @0, @-50, Dxl1, false);
	FadeDelete("絵板写", 500, null, true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I approach the sofa and slowly peek around Noiz from behind&.&.&. and what I see leaves me speechless&.

&.&.&.Ren!

Noiz has Ren sitting upside down in his lap while he holds a tool over him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000030a01">
"What are you doing!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I yell without thinking&, and Noiz slowly turns around to 
face me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/1000040a03">
"Oh&, so you were here&."

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000050a01">
"Don't give me that! Let Ren go! Hand him over!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵一枚絵", 1001, -120, -160, "cg/ev/m/ev004犬蓮起動_m.jpg");
	CreateSE("SE01","se戦闘_打撃_ヒット低01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(200);
	CreateSE("SE02","se人体_動作_衣擦れ01");
	MusicStart("SE02",0,700,0,1300,null,false);
	Move("絵一枚絵", 500, @0, @-50, Dxl1, false);
	Fade("絵一枚絵", 500, 1000, Dxl1, true);

	Delete("絵背景");

	CreateTextureSP("絵一枚絵弐", 1000, -120, -210, "cg/ev/m/ev004犬蓮起動a_m.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I lean over the backrest of the sofa and pick up the blue 
lump from Noiz's lap&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1800);
	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Wait(500);
	FadeDelete("絵一枚絵", 500, Dxl1, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Worried&, I immediately try to start up Ren&. It takes a bit longer than usual&, but Ren finally opens his eyes&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm21/1000060a06">
"Aoba&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000070a01">
"Are you okay? Do you feel strange anywhere?"

{	DeleteFw();}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm21/1000080a06">
"No problems&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000090a01">
"Really&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	FadeDelete("絵一枚絵弐", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
I'm genuinely relieved that Ren is all right&. But my 
feelings of relief revert back to anger and I glare at 
Noiz&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000100a01">
"You&.&.&. What were you doing to Ren?"

{	Fw("fwノイズ_通常_normal");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/1000110a03">
"I wasn't doing anything&."

{	Fw("fw蒼葉_通常_rage");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000120a01">
"Liar&. You obviously did something&."

{	Fw("fwノイズ_通常_normal2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/1000130a03">
"I did&, but I didn't do anything that would cause any
 problems&. And you&, you're the weird one here&."

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000140a01">
"How so?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_cool2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/1000150a03">
"I said it when the Drive-By happened&. You're getting all
 pissy just over an Allmate&. That's pretty lame&."

{	Fw("fw蒼葉_通常_shout");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000160a01">
"Guh&, what the hell&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_normal");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0063]
I lower Ren to the floor&, walk around the sofa&, and stand 
in front of Noiz&.

I can't just let him say that&.

I try to grab him by the collar&, but I see something that 
startles me&.

{	SetVolumeEX("@dm*", 3000, 0, null);}
&.&.&.Blood&.

Blood is flowing from Noiz's fingers&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0065]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000170a01">
"! You&, that&.&.&. You got hurt!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"buノイズ_通常_normal3");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/1000180a03">
"Yeah&. I got knicked by the tool&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
Maybe when I picked up Ren&, he&.&.&.?

There were no other times he could've injured himself&. 
When I peeped over him&, he wasn't hurt&.&.&.

That means&.&.&. it was my fault&.

My anger quickly changes to awkwardness&.

I don't think I can bring myself to hit an injured person&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	FwPro("fw蒼葉_通常_sad",4400,"fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0078]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000190a01">
"&.&.&.Sorry&. It's my fault&, I'll apologize for that&. Show
 me the injury&. First off&, we have to stop the bleeding-"

{	St("C",740, @0,@0,"buノイズ_通常_normal2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/1000200a03">
"It's fine&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000210a01">
"No&, it isn't&. Show me&."

{	St("C",740, @0,@0,"buノイズ_通常_cool2");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/1000220a03">
"It is&."

{	Fw("fw蒼葉_通常_shout2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000230a01">
"Come on&, it's not fine&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//※ＳＥ：パン、と手を払う音
	CreateSE("SE01","se人体_動作_払う01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 10, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Wait(200);

//	CreateColorSP("絵色白", 4000, "FFFFFF");
//	Wait(30);
	St("C",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("C",200,true);
//	FadeDelete("絵色白", 70, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/1000240a03">
"Don't touch me&. I'll do it myself&."

{	Fw("fw蒼葉_通常_shock2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000250a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
I feel a brief pain and realize that the hand I reached 
out to Noiz with was just slapped away&.

Dumbfounded&, I stare at Noiz like a total idiot&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	DeleteAllSt(200,true);

	CreateSE("SE02","se人体_足音_歩く06");
	MusicStart("SE02",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
Noiz rises from the sofa and walks towards the hallway&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/1000260a01">
"&.&.&.Hey&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2120.nss"]

}
