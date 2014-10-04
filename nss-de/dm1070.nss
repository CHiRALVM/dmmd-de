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


scene dm1070.nss_MAIN
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
	$GameName = "dm1080.nss";

}


scene dm1070.nss
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
<voice name="蒼葉" class="蒼葉" src="voice/dm10/7000010a01">
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

	Fw("fw紅雀_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/7000020a02">
"What the&.&.&.?"

{	Fw("fwmパンダ_通常_normal");}
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm10/7000030e02">
"Welcome to the world's greatest place for love&, dreams&,
 and amusement to take all those worries away&, Platinum
 Jail!"

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

{	Fw("fwmパンダ_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm10/7000040e02">
"This is the upper paradise where only the chosen are let
 in! Please enjoy yourselves as much as you can!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/7000050a01">
"Upper paradise&.&.&.?"

{	Fw("fw紅雀_通常_worry2");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/7000060a02">
"He's a little too happy to see us&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Without paying much attention to us in particular&, the 
panda dances and presses a button on a wall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Roulette("紅雀");

{	Fw("fwmパンダ_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm10/7000070e02">
"Now&, which entrance will you two take? Fun-Fun Roulette&,
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
[text0030]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm10/7000080e02">
"Indeed&, indeed&, you're heading through the Flame Willow
 entrance! Now&, please come this way!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	RouletteDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
To the left of the panda the door opens&, and it begins to 
wave its arms around and dance once again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmパンダ_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm10/7000090e02">
"This is the area for people with a will and a passion for
 intense pleasure! Surely your hearts are already beating
 in excitement!"

{	Fw("fwmパンダ_通常_normal");}
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm10/7000100e02">
"Hold onto that expectation&, and have a great time!"

{	St("C",740, @0,@0,"st紅雀_通常_worry");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/7000110a02">
"Huh? I have no idea what the hell that panda's going on
 about&."

{	St("C",740, @0,@0,"st紅雀_通常_cool");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm10/7000120a02">
"We better stay on guard once we head through that
 entrance&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/7000130a01">
"Yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
It's plenty possible that this is a trap&. But we can't go 
back now after coming this far&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fwmパンダ_通常_normal");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
//【案内パンダ】
<voice name="案内パンダ" class="案内パンダ" src="voice/dm10/7000140e02">
"Across the door&, there's a confirmation monitor that you
 must show your ticket or invitation to!"

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm10/7000150a01">
"You mean this thing?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_コイル_操作音01");//あきゅん「ＳＥ：se物体_コイル_操作音01」
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0044]
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
[text0045]
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm10/7000160e06">
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
<voice name="認証モニター" class="認証モニター" src="voice/dm10/7000170e06">
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
Koujaku puts his Coil to the monitor&.

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
<voice name="認証モニター" class="認証モニター" src="voice/dm10/7000180e06">
"Confirmed&, Guest ID now being transmitted&. All
 jurisdiction belongs to the Platinum ID holder&."

//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm10/7000190e06">
"The Guest ID has restricted uses only&, so please practice
 caution&."

{
	SetVolumeEX("@dm*", 2000, 0, null);
}
//★加工：モニターのやや電子音じみた声
//【認証モニター】
<voice name="認証モニター" class="認証モニター" src="voice/dm10/7000200e06">
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

//※次ファイル["dm1080.nss"]

}
