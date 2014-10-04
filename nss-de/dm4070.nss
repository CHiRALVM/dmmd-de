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


scene dm4070.nss_MAIN
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
	$GameName = "dm4080.nss";

}


scene dm4070.nss
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

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/7000010a01">
"Wha-"

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/7000020a04">
"Wah!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
The gate opens&, and we're greeted by a showy fanfare and 
the sound of fire crackers around us&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm40/7000030e02">
"Welcome to the world's greatest amusement facility&,
 Platinum Jail!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateTextureEX("絵背景", 100, -490, -380, "cg/bg/l/bg305021_5_プラチナジェイルゲート前_l.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
A panda walks up and poses in front of us&. 

I guess he's supposed to be cute&, but I can't say I can 
see him as anything but weird&.

{Fade("絵背景",500,1000,null,true);}
Behind the panda are five white doors&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm40/7000040e02">
"This is the upper paradise where only the chosen are let
 in! Please enjoy yourselves as much as you can!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/7000050a01">
"Upper paradise? That sounds really suspicious&."

{	Fw("fwクリア_通常マスクあり_normal");}
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/7000060a04">
"It does&. A dubious&, giant explosion!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
The panda unsteadily walks towards us as I stare at him&, 
unimpressed&, and presses a button on the wall&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Roulette("クリア");

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm40/7000070e02">
"Now! Which entrance will you two take? Fun-Fun roulette&,
 start!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「演出：ルーレット演出、内容によっては地の文を消す」
	RouletteFade();

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm40/7000080e02">
"Allll right! You two will be going through Aqua Forest's
 entrance! Please come this way!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
It walks over to the last door to the right&, and makes 
another pose in front of it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm40/7000090e02">
"It's a place that slowly sways&, a refreshing and calming
 sea of water! I'm sure it'll wash your worries away!"

{	Fw("fwmパンダ_通常_normal");}
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm40/7000100e02">
"I hope you enjoy this absolutely charming area!"

{	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(21000,77, 313,15,"fw");}
//【クリア】※漫符：ケラケラ
<voice name="クリア" class="クリア" src="voice/dm40/7000110a04">
"This is kind of exciting&. Let's go!"

{	ClearComicNexDelete();
	Fw("fw蒼葉_通常_sigh");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/7000120a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmパンダ_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm40/7000130e02">
"Make sure to show your ticket or invitation to the
 confirmation monitor on your way!"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/7000140a01">
"You mean this invitation thing?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I open up the invitation on my Coil and walk closer to the monitor&.


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
[text0043]
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm40/7000150e06">
"Platinum ID confirmed&. Aoba-sama and guest&, welcome to
 Platinum Jail&. The admission formalities will now begin&."

//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm40/7000160e06">
"Guest has been granted Guest ID&. Guest&, please show your
 Coil to the monitor&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwクリア_通常マスクあり_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/7000170a04">
"Yeeess!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Clear holds up his Coil to the monitor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm40/7000180e06">
"Confirmed&, Guest ID now being transmitted&. All
 juristiction belongs to the Platinum ID holder&."

//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm40/7000190e06">
"The Guest ID has restricted uses only&, so please practice
 caution&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
}
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm40/7000200e06">
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

//※次ファイル["dm4080.nss"]

}
