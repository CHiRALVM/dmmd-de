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


scene dm0162.nss_MAIN
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
	$GameName = "dm0170.nss";

}


scene dm0162.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm002",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg101031_1_旧住民区通り裏路地紅時雨");
	FadeBG(0,true);

	FadeDelete("上背景", 0, null, true);


//==============================================
//※「躊躇する」を選んだ場合
//==============================================

	SetVolumeEX("@dm*", 1000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.Hoer auf&.

Meine Reaktion kommt zu spaet um es zu vermeiden&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/6200010a01">
"&.&.&.Gh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
Nein&, fass mich nicht an&.&.&.!

Sie bewegt ihren Arm auf mich zu kurz bevor ich sie reflexartig abwehre&.

{
	SoundPlay("@dm012",0,450,true);

	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/6200020a02">
"Wie grausam&. Selbst wenn ich neben dir stehe&, versuchst du einen anderen
 Mann zu verfuehren?"

{
	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,700,0,1100,null,false);

	DeleteAllSt(200,true);
}
Koujaku's grosse Hand faengt die Hand der Frau ab und drueckt sie zaertlich
gegen seine Wange&. Die Frau wird sofort knallrot&.

{
	St("C",740, @0,@0,"st紅雀_通常_smile");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/6200030a02">
"Hast du mich satt?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwmギャルB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm01/6200040e50">
"Nein- nein&, Ich koennte nie&.&.&."

{	Fw("fwmギャルA_通常_normal");}
//【ファンの女子Ａ】
<voice name="ファンの女子Ａ" class="ファンの女子Ａ" src="voice/dm01/6200050e49">
"Das stimmt! Unhoeflich&, so direkt vor Koujaku-san! Aber ich bin auch neidisch!"

{	Fw("fwmギャルB_通常_normal");}
//【ファンの女子Ｂ】
<voice name="ファンの女子Ｂ" class="ファンの女子Ｂ" src="voice/dm01/6200060e50">
"Es tut mir Leid&, Ich wollte nicht&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_通常_normal");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm01/6200070a02">
"Entschuldige dich nicht&. Ich bin nicht wuetend oder so&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
Kojaku laesst die Hand der Frau laechelnd&.

Ich fuehle mich erleichtert und gegenueber Koujaku&.

Er hat mich gerade.&.&. gerettet&.

Er weiss&, dass ich es hasse wenn andere Leute mein Haar beruehren&.

Wenn er solche Dinge tut&, kann ich ihn einfach nicht hassen&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm01/6200080a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0170.nss"]

}
