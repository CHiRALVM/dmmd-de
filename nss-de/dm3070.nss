//<continuation number="180">
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


scene dm3070.nss_MAIN
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
	#bg305021_5_プラチナジェイルゲート前=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3080.nss";

}


scene dm3070.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg305021_5_プラチナジェイルゲート前");
	FadeBG(0,true);

	CreateColorSP("絵色白", 4000, "FFFFFF");

	DrawDelete("上背景", 500, 100, null, "circle_01_00_1", true);

//※ゲートが左右へ静かにスライドして開く
//※ぱぱぱぱーんとクラッカーの音、ファンファーレ
	CreateSE("SE01","se擬音_効果_ファンファーレ");//あきゅん「ＳＥ：se擬音_効果_ファンファーレ」
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(50);

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(50);

	Fade("絵色白", 0, 1000, null, true);
	Wait(30);
	Fade("絵色白", 70, 0, null, true);

	Wait(50);

	Fade("絵色白", 0, 1000, null, true);
	Wait(500);

	Request("絵色白", AddRender);

	Fade("絵色白", 1000, 0, null, true);
	Delete("絵色白");

	SoundPlay("@dm002",0,450,true);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/7000010a01">
"!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The gate opens&, and we're greeted by a showy fanfare and
the sound of fire crackers around us&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm30/7000020e02">
"Welcome! The the world's greatest place for love&,
 dreams&, and amusement to take all those worries away&,
 Platinum Jail!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, -490, -380, "cg/bg/l/bg305021_5_プラチナジェイルゲート前_l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
A surreal looking panda trots out from the side of us&.

{Fade("絵背景",500,1000,null,true);}
I can see five white doors behind him&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm30/7000030e02">
"This is the upper paradise where only the chosen are let
 in! Please enjoy yourselves as much as you can!"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/7000040a01">
"Upper paradise&.&.&.?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/7000050a05">
"How exaggerated&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Without caring much about us&, the panda presses a button
on the wall in high spirits&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Roulette("ミンク");

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm30/7000060e02">
"Now! Which entrance will you two take? Fun-Fun Roulette&,
 start!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：ルーレット演出、内容によっては地の文を消す」
	RouletteFade();

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm30/7000070e02">
"Aaand&, your destination is Black Valley! Now&, now&,
 come this way!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
The panda wiggles over and presses a button by the second 
door from the right&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm30/7000080e02">
"This is a place for people with an adult-like mindset that want a little spunk: a dark and dangerous area!"

{	Fw("fwmパンダ_通常_normal");}
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm30/7000090e02">
"You don't know what will happen next&.&.&. It'll keep your
 heart pounding! Hold onto that expectation&, and have a
 great time!"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/7000100a01">
"He's kind of annoying&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
I'm a little ticked off&, but Mink just ignores him and
stares at the monitor&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwミンク_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm30/7000110a05">
"He's like a moth to the flame&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
Mink lowly murmurs&.

Well&.&.&. if this were a trap&, we'd be jumping right into 
the enemy's hands&.

And the possibility of that is pretty high&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm30/7000120e02">
"Across the door&, there's a confirmation monitor that
 you must show your ticket&, or your invitation to!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0043]
The confirmation monitor next to the door lights up&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm30/7000130a01">
"Invitation&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
//	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
I open up the invitation on my Coil and walk closer to 
the monitor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//	CreateSE("SE01","se物体_コイル_操作音03");//あきゅん「ＳＥ：se物体_コイル_操作音03」
//	MusicStart("SE01",0,700,0,1000,null,false);

	//★徒歩バンク
	CoilBank05a();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0046]
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm30/7000140e06">
"Platinum ID confirmed&. Aoba-sama and guest&, welcome to
 Platinum Jail&. The admission formalities will now begin&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm30/7000150e06">
"Guest has been granted Guest ID&. Guest&, please show your 
 Coil to the monitor&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
Mink holds up his Coil to the monitor&.

Mink's a prisoner&.&.&. will he be okay?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音03");//あきゅん「ＳＥ：se物体_コイル_操作音03」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm30/7000160e06">
"Confirmed&, Guest ID now being transmitted&. All
 jurisdiction belongs to the Platinum ID holder&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
I calm down as Mink's ID is easily confirmed&. 

Why? Is Platinum Jail's security that loose?

Or is it because I had that invitation&.&.&.

But for now&, that's great&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm30/7000170e06">
"The Guest ID has restricted uses only&, so please practice
 caution&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
}
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm30/7000180e06">
"Please read the detailed support section in the full
 Invitation Card&. Please enjoy&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//★徒歩バンク
	CoilBank05b();

	ClearFadeAll(2000, true);
	Wait(1000);

//※次ファイル["dm3080.nss"]

}
