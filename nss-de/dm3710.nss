//<continuation number="170">
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


scene dm3710.nss_MAIN
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
	$GameName = "dm3720_vs.nss";

}


scene dm3710.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304121_5_東江タワー東江の間");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵色黒", 1000, null, true);

	Wait(300);

	SoundPlay("@dm019",0,450,true);

//※場面切替／ミンク視点

//※背景：タワー内／東江の部屋

//※冒頭からいきなり床に膝をつくミンク。苦しそうにしている。
//　正面には相変わらず余裕の東江が立っている。

{	Fw("fwミンク_戦闘_pinch");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/1000010a05">
"Kuh&.&.&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000020b02">
"How is it? It's just as I said&. That simple things are
 quite effective&. How does it feel?"

{	Fw("fwミンク_戦闘_pinch");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/1000030a05">
"&.&.&.Awful&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000040b02">
"I thought as much&. The words just before crushed your
 dearest wish&, the same thing as choking the life out of
 you&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000050b02">
"Your wish was to kill both me and your own self&. Wasn't
 that it?"

{	Fw("fwミンク_戦闘_pinch");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/1000060a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000070b02">
"How unfortunate&."

{	Fw("fwミンク_戦闘_pain");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/1000080a05">
"Scrap&, huh?"

{	St("C",740, @0,@0,"st東江_通常_serious");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000090b02">
"Truthfully&, it's a lttle different&. I simply used your
 sense of hearing and planted a sort of 'seed' into your
 mind&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000100b02">
"I've always been researching a way to break peoples'
 minds&, so fresh meat is always welcomed by the leaders
 of the operation&."

//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000110b02">
"I myself became a test subject myself&."

{	Fw("fwミンク_戦闘_pinch");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/1000120a05">
"&.&.&.&.&."

{	St("C",740, @0,@0,"st東江_通常_think");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000130b02">
"The seed planted into your mind can't be taken out by
 anything without the use of Scrap&."

{	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);}
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000140b02">
"So in simple terms&, you're going to be the living dead
 here&, your wishes and achievements both unreachable&."

//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000150b02">
"&.&.&.I wonder&. If it's more painful this way than to die&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st東江_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【東江】
<voice name="東江" class="東江" src="voice/dm37/1000160b02">
"This is my last present to you&, Mink-kun&."

{	Fw("fwミンク_戦闘_pain");}
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/1000170a05">
"&.&.&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1500, 0, null);

	Wait(32);

	ClearFadeAll(1000, true);
	Wait(1500);

//※次ファイル["dm3720_vs.nss"]

}
