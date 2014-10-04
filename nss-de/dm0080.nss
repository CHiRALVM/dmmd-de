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


scene dm0080.nss_MAIN
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
	#bg101041_3_旧住民区通り裏路地05=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm0090.nss";

}


scene dm0080.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SetVolumeEX("@dm*", 500, 0, null);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101041_3_旧住民区通り裏路地05");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	SoundPlay("@dm002",0,450,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Als ich mich von Yoshie-san befreien konnte&,
war es bereits dunkel&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/8000010a01">
"&.&.&.Ren&, gute Arbeit da drin&."

{	Fw("fwAM蓮_通常_worry");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/8000020a06">
"&.&.&.Wenn es sich nicht vermeiden laesst&, muss ich tun&, was ich tun muss&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Ren hockt sich behutsam in die Tasche&.

Clara scheint Ren auf eine gewisse Art und Weise zu moegen&,
so dass wenn sich unsere Augen treffen&, sein Blick wie ein Schrei nach Hilfe wirkt&.

Die Persoenlichkeit des Allmates passt sich dem Besitzer an und verhaelt sich in jeder 
Umgebung ein wenig anders&.

Daraus folgt&, das sich Allmates sich&, genauso wie Menschen&,
verschieden gut verstehen&.

Ren scheint Clara nicht sonderlich zu moegen&. 
Ungluecklicherweise finde ich es ziemlich amuesant&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm00/8000030a06">
"Ist bei dir auch alles in Ordnung&, Aoba?"

{	Fw("fw蒼葉_通常_sigh3");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/8000040a01">
"&.&.&.Irgendwie&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
Nachdem Yoshie-san mich aufgehalten hatte&,
wurde mir ein grosses Stueck Torte mit Sahne angeboten;
Sie hat den Kuchen in einem Kochkurs gebacken&.

&.&.&.Genauer gesagt&, wurde ich gezwungen Alles zu essen&. 
Deshalb habe ich jetzt Sodbrennen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm00/8000050a01">
"So&, lass uns nach Hause gehen&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Ich taetschle Rens Ruecken um meinen tapferen Soldaten&,
welcher dem Tod nur knapp entgangen ist&,
beizutroesten und fange an nach Hause zu laufen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 25000, "BLACK");

	DrawTransition("絵黒幕", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ClearFadeAll(0, true);

//※次ファイル"dm0090.nss"

}
