//<continuation number="220">
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


scene dm4100.nss_MAIN
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

	//▼背景ＣＧ
	#bg302041_5_グリッター廊下=true;
	#bg302021_5_グリッター居間=true;
	#bg302011_5_グリッター部屋01=true;
	#bg302051_5_グリッターエントランス=true;
	#bg302011_5_グリッター部屋01ベッド角=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm4110.nss";

}


scene dm4100.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302051_5_グリッターエントランス");
	FadeBG(0,true);
	Delete("上背景");

	CreateTextureSP("絵背景", 100, Center, -200, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");
	CreateTextureSP("絵背景弐", 200, Center, 0, "cg/bg/m/bg302051_5_グリッターエントランス_m.jpg");
	CreateColorEXadd("絵背景上", 3000, "WHITE");
	Fade("絵背景上", 0, 1000, null, true);

	Move("絵背景弐", 3000, @156, @0, null, false);

	FadeDelete("絵色黒", 500, null, true);
	FadeDelete("絵背景上", 1000, null, false);

	Wait(2000);

	Move("絵背景", 3000, @-156, @0, null, false);
	FadeDelete("絵背景弐", 500, null, true);

	Wait(2000);

	FadeDelete("絵背景", 500, null, true);

	Wait(500);

	SoundPlay("@dm002",0,450,true);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000010a01">
"Ooh&.&.&."

{	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(20001,85,411,3,"fw");}
//【クリア】※漫符：花orキラキラ
<voice name="クリア" class="クリア" src="voice/dm41/0000020a04">
"Wow&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
We walk through the doorway and the inside astonishes us&.

It's different from what I thought it would be&. The 
interior has a classical feeling to it&.

It doesn't have the quirks of Platinum Jail&, and it's 
almost like we just stepped into a different world&.

A short distance away is a staircase that goes up to a 
second floor&, and in the front are a table and a sofa&. All of the furniture looks expensive&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000030a01">
"This is awesome&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stクリア_通常マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000040a04">
"This is a high-class guest house&."

{
	FwPro("fw蒼葉_通常_shock2",2500,"fw蒼葉_通常_fake");
//	Fw("fw蒼葉_通常_fake");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000050a01">
"Guest house? I don't really get what that is anyway&."

{
	DeleteFw();
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000060a04">
"It's a house for guests&."

{	Fw("fw蒼葉_通常_sigh2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000070a01">
"&.&.&.You don't really know either&, do you?"

{
	DeleteFw();
}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000080a04">
"That's a secret&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000090a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
I tour around the bottom floor first&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000100a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	CreateTextureSP("絵背景弐", 500, Center, 0, "cg/bg/l/bg302051_5_グリッターエントランス_l.jpg");
	Request("絵背景弐", Smoothing);
	SetShade("絵背景弐", LIGHT);
	Zoom("絵背景弐", 0, 2500, 2500, null, true);
	Move("絵背景弐", 0, @-150, @864, null, true);
	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",0,true);

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
I turn around and realize that within a very short amount 
of time&, Clear had sped up the stairs and is now bending 
over the second floor handrail&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000110a04">
"There are rooms on the second floor!"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000120a01">
"There are?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwクリア_正面マスクあり_normal");
	St("C",740, @0,@0,"fuクリア_正面マスクあり_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000130a04">
"Also&, I have something I would like to discuss&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000140a01">
"What?"

{	St("C",740, @0,@0,"fuクリア_通常マスクあり_normal");
	FadeSt("C",200,true);}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000150a04">
"Today must've been tiring&."

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000160a01">
"It was&."

{	DeleteFw();}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000170a04">
"Then&, it's time for us to go to bed&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000180a01">
"Heh?"

{	DeleteFw();}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000190a04">
"Good night&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	DeleteSt("C", 0,true);
	Delete("絵背景弐");

	FadeDelete("絵板写", 500, null, true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0111]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm41/0000200a01">
"Eh- wait-"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
Clear quickly makes his way further back in the second 
floor&.

Hey&, wait&, what the heck was that?

I put Clear's sudden change in attitude out of my mind and go up the stairs&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

//	OnBG(10,"bg302011_5_グリッター部屋01ベッド角");
//	FadeBG(0,true);

	CreateTextureSP("絵背景20", 20, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01ベッド角.jpg");
	Rotate("絵背景20", 0, @0, @180, 0, null, true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg302021_5_グリッター居間.jpg");
	#bg302021_5_グリッター居間=true;

	FadeDelete("絵板写", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
As soon as I go upstairs&, I see there's a modest living 
room&.

In there is a billiard table&, some darts&, a TV&, and a smallbar counter&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureSP("絵背景弐", 80, Center, Middle, "cg/bg/bg302041_5_グリッター廊下.jpg");
	CreateTextureSP("絵背景参", 70, Center, Middle, "cg/bg/bg302011_5_グリッター部屋01.jpg");
	#bg302011_5_グリッター部屋01=true;

	FadeDelete("絵背景", 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0131]
Clear had disappeared into the hallway&, so he must be in a room somewhere&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景弐", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0132]
I go into one of the rooms&.

It's a simple but beautifully arranged bedroom&.
I don't see Clear anywhere&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Fade("絵背景弐", 500, 1000, null, true);
	Delete("絵背景参");

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0133]
I leave the room and open the door next to it&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateTextureEX("絵背景110", 110, Center, Middle, "cg/bg/bg302012_5_グリッター部屋02.jpg");
	Fade("絵背景110", 1000, 1000, null, true);
	Fade("絵背景弐", 0, 0, null, true);

	Wait(500);

	FadeDelete("絵背景110", 500, null, true);

//	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm41/0000210a04">
"Zzzzzz&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
&.&.&.There he is&.

Clear is sprawled across the bed&, sleeping&.
And he even has his gasmask on&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【蒼葉】
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0171]
Sheesh&.&.&.

I can never tell if he's being serious or if he's joking&.

He doesn't seem like a bad guy&, but he's definitely weird&. It's hard to tell what he's thinking&.&.&.

And that mask&, it must be suffocating&.&.&.

&.&.&.Well&, whatever&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fade("絵背景弐", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
I leave the thought inside with Clear and quietly exit the room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm4110.nss"]

}
