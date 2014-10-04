//<continuation number="150">
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


scene dm5070.nss_MAIN
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
	$GameName = "dm5080.nss";

}


scene dm5070.nss
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
<voice name="蒼葉" class="蒼葉" src="voice/dm50/7000010a01">
"Whoa!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
The gate opens and I'm greeted by a showy fanfare and 
the sound of fire crackers around me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm50/7000020e02">
"Welcome to Japan's greatest&, highest class facility of
 love&, dreams&, and comfort&, Platinum Jail!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, -490, -380, "cg/bg/l/bg305021_5_プラチナジェイルゲート前_l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
A panda comes out from the side and greets me&.

I think he's supposed to be cute&, but I can't say I think 
he really is&.

{Fade("絵背景",500,1000,null,true);}
Behind him are five white doors&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm50/7000030e02">
"This is the upper paradise where only the chosen are let
 in! Please enjoy yourself as much as you can!"

{	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/7000040a01">
"Okay&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
The panda&, not really concerned about me at all&, goes over to a wall in a rhythmical way and presses a button&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Roulette("蓮");

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm50/7000050e02">
"Now&, which entrance will you take? Fun-Fun roulette&,
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
[text0024]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm50/7000060e02">
"Ohhh&, your destination is Midnight Blue Coast!
 Now&, this way please!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
The panda stands in front of the middle door and bends his body to the side in an amusing manner&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm50/7000070e02">
"This is an area where the real Platinum Jail shines
 through! If you let go of some things&.&.&. something
 might change&, you know?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm50/7000080e02">
"Please&, do go inside! Have a nice trip!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
The panda prompts me in high spirits&, and I walk towards 
the door cautiously&.

I stop right at the door and talk to Ren&, who has his 
head popping out of my bag&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/7000090a01">
"It's pretty likely that this is a trap&, huh?"

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm50/7000100a06">
"The probability is high&."

{	Fw("fw蒼葉_通常_think");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/7000110a01">
"But we still have to go&, don't we?"

{	Fw("fwmパンダ_通常_normal");}
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm50/7000120e02">
"Make sure to show your ticket or invitation to the
 confirmation monitor on your way!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm50/7000130a01">
"Invitation&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
I open up the invitation on my Coil and walk closer to the monitor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

//	CreateSE("SE01","se物体_コイル_操作音03");//あきゅん「ＳＥ：se物体_コイル_操作音03」
//	MusicStart("SE01",0,700,0,1000,null,false);

	//★徒歩バンク
	CoilBank05a();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm50/7000140e06">
"Platinum ID confirmed&. Aoba-sama&, welcome to Platinum
 Jail&."

//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm50/7000150e06">
"All juristiction belongs to the Platinum ID holder&. Please observe the detailed entry on the subject which is located on your invitation card&. Have an enjoyable time&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	//★徒歩バンク
	CoilBank05b();

	ClearFadeAll(2000, true);
	Wait(1000);

//※次ファイル["dm5080.nss"]

}
