//<continuation number="50">
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


scene dm0170.nss_MAIN
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
	$GameName = "dm0180.nss";

}


scene dm0170.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101031_1_旧住民区通り裏路地紅時雨");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);

//==============================================
//※以降、合流
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Als Koujaku mein Starren bemerkt&, laechelt er&. 

{
	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/7000010a02">
"Was ist los? Beneidest du meine Maenlichkeit?" 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_cranky");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/7000020a01">
"Halt die Schanuze&, du Grossflusspferd&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm01/7000030e49">
"Hey! Wieso nennst du Koujaku-san ein Grossflusspferd!?" 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
Ich uebermittle Koujaku ein Danke&, indem ich laechele&,
waehrend ich seinen Witz kritisiere&.

Koujaku antwortet nur mit einem lautlosen Zwinkern und signalisiert damit&.

Ich kann das nicht glauben&, aber es geht mir tatsaechlich ein wenig Nahe&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/7000040a01">
"Na dann&, ich gehe mal&." 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_smile2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/7000050a02">
"Okay&. Sei vorsichtig&." 

{
	DeleteAllSt(200,true);
}
I part with Koujaku while waving slightly&, and begin to 
walk again&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureSP("絵背景", 100, -626, -509, "cg/bg/l/bg101031_1_旧住民区通り裏路地紅時雨_l.jpg");

	DrawDelete("絵黒幕", 1000, 100, null, "blind_01_00_1", true);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
Das Lieferziel war bereits nah&, als ich an der Strasse rechts abbog und gerade aus ging&.

Als ich mich an der Ecke umdrehe&, sehe ich einen Mann der am Strassenrand hockt&.

Er fluestert etwas&, aber ich verstehe die Inhalte kaum&.

Heutzutage kann man relativ oft sehen das Leute das tun&.

Auf dem Boden sitzend und in den Himmel schauend&, 
an die Mauer lehnend zu sich selbst murmelnd&.

Solche Leute gab es schon immer&, aber 
ich habe das Gefuehl&.

Naja&, solange du dich von Ihnen fernhaeltst&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Ich gehe zuegig am fluesternden Mann vorbei&.



</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Wait(500);

//※次ファイル["dm0180.nss"]

}
