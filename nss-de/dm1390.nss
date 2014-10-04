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


scene dm1390.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	#bg202011_3_暴露紅雀実家居間=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1400.nss";

}


scene dm1390.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色白", 29000, "000000");

	CreateCamera("Ｃ", 0, 0, 15000);
	SetAlias("Ｃ","Ｃ");

	CreateTextureSP("Ｃ/絵演背景奥", 0, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景左", 0, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景右", 0, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");

	CreateTextureSP("Ｃ/絵演背景奥面奥", -2500, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景奥面左", -2500, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景奥面右", -2500, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");

	CreateTextureSP("Ｃ/絵演背景奥弐面奥", -11250, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	CreateTextureSP("Ｃ/絵演背景奥弐面左", -11250, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	CreateTextureSP("Ｃ/絵演背景奥弐面右", -11250, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");

	//CreateTextureSP("Ｃ/絵演背景奥参面奥", -7500, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");
	//CreateTextureSP("Ｃ/絵演背景奥四面左", -10000, 374, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子左.png");
	//CreateTextureSP("Ｃ/絵演背景奥四面右", -10000, 514, 147, "cg/bg/bg202011_3_暴露紅雀実家居間障子右.png");
	//CreateTextureSP("Ｃ/絵演背景奥四面奥", -10000, Center, Middle, "cg/bg/bg202011_3_暴露紅雀実家居間障子抜き背景.png");

	Request("Ｃ*", Lock);
	Request("Ｃ/絵*", Lock);
	MoveCamera("Ｃ", 0, @0, @0, 1000, AxlDxl, true);
	$DM1390C=1;//超速対応用

	Delete("上背景");
	FadeDelete("絵色白", 3000, null, true);
	Wait(500);

/*
	MoveCamera("Ｃ", 1000, @0, @0, 3500, AxlDxl, true);

	Move("Ｃ/絵演背景左", 1000, @-140, @0, DxlAuto, false);
	Move("Ｃ/絵演背景右", 1000, @140, @0, DxlAuto, true);

	WaitKey();

	MoveCamera("Ｃ", 1000, @0, @0, 12250, AxlDxl, true);

while(1){

	CreateTextureSP("上背景", 20000, Center, Middle, "SCREEN");
	Wait(16);
	Move("Ｃ/絵演背景左", 0, 374, @0, DxlAuto, false);
	Move("Ｃ/絵演背景右", 0, 514, @0, DxlAuto, true);
	MoveCamera("Ｃ", 0, @0, @0, 3500, AxlDxl, true);
	FadeDelete("上背景", 50, null, true);

	Move("Ｃ/絵演背景左", 1000, @-140, @0, DxlAuto, false);
	Move("Ｃ/絵演背景右", 1000, @140, @0, DxlAuto, true);

	//WaitKey();

	MoveCamera("Ｃ", 1000, @0, @0, 12250, AxlDxl, true);

	Wait(300);

	//Move("Ｃ/絵演背景左", 1000, @-140, @0, DxlAuto, false);
	//Move("Ｃ/絵演背景右", 1000, @140, @0, DxlAuto, true);

	//WaitKey();

	$x1++;
	SetFont("ＭＳ 明朝", 18, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("Dt1", 30000, 50, 20, 700, 500, $x1);

/*
	CreatePlainSP("Ｃ/絵板写", -12000);
	Wait(16);

	WaitKey();

	Move("Ｃ/絵演背景左", 0, 374, @0, DxlAuto, false);
	Move("Ｃ/絵演背景右", 0, 514, @0, DxlAuto, true);
	Move("Ｃ/絵演背景奥面左", 0, 374, @0, DxlAuto, false);
	Move("Ｃ/絵演背景奥面右", 0, 514, @0, DxlAuto, true);
	MoveCamera("Ｃ", 0, @0, @0, 3500, AxlDxl, true);
	Delete("Ｃ/絵板写");

	WaitKey();
*/

}

*/


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
I feel like my body is being pulled down&.&.&.

When I open my eyes&, I find myself standing in a gloomy 
room&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateTextureEX("絵演背景", 15100, Center, Middle, "cg/bg/l/bg202011_3_暴露紅雀実家居間_l.jpg");
	Zoom("絵演背景", 0, 900, 900, null, true);
	Zoom("絵演背景", 800, 1000, 1000, DxlAuto, false);
	Fade("絵演背景", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
What? &.&.&.A sliding door?

{
	Move("絵演背景", 2600, @0, -576, DxlAuto, false);
}
The floor is also tatami&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	FadeDelete("絵演背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
The room is as wide as ten tatami mats&, and there are long candles with flames swaying on a table&.

The scent of the burning candles mix with the faint smell 
of sandlewood&.

Is this&.&.&. inside Koujaku's heart?

This must be from when he was off the island&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く02");
	MusicStart("SE01",0,700,0,1200,null,false);
	MoveCamera("Ｃ", 4000, @0, @0, 3500, DxlAuto, true);
	SetVolumeEX("SE01", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I reach out to open the sliding door in front of me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀母】
<voice name="紅雀母" class="紅雀母" src="voice/dm13/9000010e03">
"Ugh&, ooh&.&.&. &.&.&.uhhggh&.&.&.&. uck&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
Someone's voice&.
It belongs to a woman&.

I can hear her sobbing&.

Is she on the other side of this door?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/9000020a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア障子_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);
	Move("Ｃ/絵演背景左", 3000, @-140, @0, DxlAuto, false);
	Move("Ｃ/絵演背景右", 3000, @140, @0, DxlAuto, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
I feel a little nervous&, and gently slide the door open&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：すーっと障子を開ける

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030a]
And on the other side of the door is the exact same room I was in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	CreateSE("SE01","se擬音_刺青_もぞつく01L");
	MusicStart("SE01",0,1200,0,1000,null,true);
	CreateColorSP("絵色白", 18000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);
	BGPlainShake(18000,300,0,20,0,0,1000,null,true);
	SetFrequency("SE01", 10000, 800, Axl3);
	SetVolumeEX("SE01", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030b]
When I go inside&, I feel something slithering up to my 
knee&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/9000030a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SoundPlay("@dm017",5000,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
Something like a bundle of black hair&.&.&. is entwining 
itself around my leg&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※ＳＥ：うぞうぞと黒い刺青の大群が這い出てくる

{	Fw("fw蒼葉_通常_worry4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/9000040a01">
"Wha&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se擬音_刺青_もぞつく01L");
	MusicStart("SE01",0,800,0,1000,null,true);
	CreateColorSP("絵色白", 18000, "#FFFFFF");
	CreateTextureEXover("絵演毛", 17100, Center, Middle, "cg/ef/ef黒い刺青が這いよる04.png");
	SetVertex("絵演毛", center, bottom);
	Zoom("絵演毛", 0, 2500, 1500, null, true);
	Fade("絵演毛", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);
	Zoom("絵演毛", 600, 2500, 3000, null, false);

	Wait(16);

	CreateSE("SE02","se擬音_刺青_もぞつく01L");
	MusicStart("SE02",0,800,0,800,null,true);
	Fade("絵色白", 0, 1000, null, true);
	Delete("絵演毛");
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
The bundle grows larger and larger and continues to creep 
up my body&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/9000050a01">
"Wha-What is this!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE21","se人体_動作_引きずる01");
	CreateColorSP("絵色白", 18000, "FFFFFF");
	MusicStart("SE21",0,1100,0,1500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	SetFrequency("SE01", 3000, 300, null);
	SetFrequency("SE02", 3000, 200, null);
	SetVolumeEX("SE01", 1000, 300, null);
	SetVolumeEX("SE02", 1000, 300, null);

	CreateSE("SE11","se人体_足音_走る02");
	MusicStart("SE11",0,700,0,1200,null,false);
	MoveCamera("Ｃ", 2000, @0, @0, 7000, DxlAuto, true);
	SetVolumeEX("SE11", 300, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I tear off the hair around my leg in a panic then bolt out of the room&.

&.&.&.The gloom in the room must've been from that hair&, but 
now that I think about it&, that hair sort of resembled 
Koujaku's tattoo&.

{
	SetFrequency("SE01", 3000, 1000, null);
	SetFrequency("SE02", 3000, 1500, null);
	SetVolumeEX("SE01", 3000, 700, null);
	SetVolumeEX("SE02", 3000, 700, null);
}
I can hear the sound of it slithering after me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateVOICE("紅雀","dm13/9000070a02");
	MusicStart("紅雀",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【紅雀母】
<voice name="紅雀母" class="紅雀母" src="voice/dm13/9000060e03">
"Uck&, unrghhh&.&.&.&.&.&.ughh&.&.&.&.uuunh&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//※ＳＥ扱い
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm13/9000070a02">
"Uuughhhn&.&.&.&.Guhhhhnh&.&.&.Uhn&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);
*/

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
&.&.&.!

I can hear both the sound of Koujaku and the woman weeping&. 

{
	SetVolumeEX("紅雀", 300, 0, null);
}
Where?

There's another sliding door&.
Is Koujaku over there?


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm13/9000080a01">
"Shit!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE01", 3000, 0, null);
	SetVolumeEX("SE02", 3000, 0, null);

	CreateSE("SE11","se人体_足音_走る02");
	MusicStart("SE11",0,700,0,1200,null,false);
	MoveCamera("Ｃ", 2000, @0, @0, 12250, DxlAuto, true);
	SetVolumeEX("SE11", 300, 0, null);

	Wait(500);

//※次ファイル["dm1400.nss"]

}
