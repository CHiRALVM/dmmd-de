//<continuation number="160">
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


scene dm0361_vs.nss_MAIN
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
	$GameName = "dm0370.nss";

}


scene dm0361_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm006",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg104031_5_蒼葉宅自室消灯荒らし");
	FadeBG(0,true);
	CreateTextureSP("絵背景100", 100, Center, -800, "cg/bg/l/bg104031_5_蒼葉宅自室消灯荒らし_l.jpg");

	FadeDelete("上背景", 0, null, true);

	CreateSE("SE01","se人体_足音_歩く02");
	MusicStart("SE01",0,500,0,1000,null,false);
	Wait(500);

	SetVolumeEX("SE*", 2000, 0, null);


//==============================================
//※「階段を上る音が聞こえた」を選んだ場合
//==============================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.Just now&, a sound came from the stairs&.

But I can't afford to think about what it is&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_絞める01");
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE*", 3000, 0, null);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 5, 0, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw蒼葉_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6100010a01">
"&.&.&.Ugh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 1000, 0, null);

	CreateSE("SE01","se物体_蒼葉宅自室扉_扉開く強く01");//あきゅん「ＳＥ：se物体_蒼葉宅自室扉_扉開く強く01」
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("絵背景100", 200, null, true);

	SoundPlay("@dm009",0,450,true);

	Fw("fw紅雀_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6100020a02">
"Aoba!"

{
	Fw("fw蒼葉_通常_pinch");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6100030a01">
"!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	St("C",740, @0,@0,"st紅雀_通常_angry");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Suddenly the door opens and Koujaku flies in&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6100040a01">
"Koujaku! Why are&.&.&."

{
	St("C",740, @0,@0,"st紅雀_通常_shout");
	FadeSt("C",200,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6100050a02">
"I sent you a message saying I'd come to talk about Mizuki&,
 didn't I? But more importantly&.&.&. You bastard&, let go
 of Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);
	CreateSE("SE01","se人体_動作_衣擦れ25");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
Koujaku growls and grabs the man&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6100060a03">
"Tch&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se環境_戦闘_紅雀とノイズのもみ合い01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 10, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
The man falls down on the floor with Koujaku&, and a 
struggle begins&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
My arm is released and I'm now free&, but it's already too 
late&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_掴む01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Fw("fw蒼葉_通常_rage");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6100070a01">
"Stop it&, both of you!"

{
	DeleteFw();
	CreateTextureEX("絵背景200", 200, Center, -62, "cg/bg/m/bg104031_5_蒼葉宅自室消灯荒らし_m.jpg");
	SetShade("絵背景200", MEDIUM);
	Move("絵背景200", 250, @200, @0, Dxl1, false);
	Fade("絵背景200", 250, 1000, null, true);

	SetVolumeEX("SE*", 2000, 0, null);

	St("L",740, @0,@0,"buノイズ_通常_angry");
	FadeSt("L",200,true);
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6100080a03">
"&.&.&.Ugh!"

{
	DeleteAllSt(180,true);
	Move("絵背景200", 250, @-400, @0, Dxl1, true);
	St("R",740, @0,@0,"bu紅雀_通常_angry2");
	FadeSt("R",180,true);
}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6100090a02">
"Bastard!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteAllSt(200,true);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");//あきゅん「ＳＥ：se戦闘_打撃_ヒット低01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(10);
	Delete("絵背景200");
	FadeDelete("絵色白", 70, null, true);

	CreateSE("SE01","se環境_戦闘_紅雀とノイズのもみ合い01L");
	MusicStart("SE01",0,700,0,1000,null,true);

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fwノイズ_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0037]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6100100a03">
"Ngh&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 200, 0, 20, 0, 0, 500, null, true);
	Delete("絵板写");

	Fw("fw紅雀_通常_angry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6100110a02">
"&.&.&.Gh!"

{
	Fw("fw蒼葉_通常_shout2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6100120a01">
"Hey!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreatePlainSP("絵板写", 990);
	Shake("絵板写", 150, 0, 15, 0, 0, 500, null, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0042]
I can't stop them because they're rolling and tumbling 
all over the place&.

The man avoids Koujaku's attack and grabs his shoulder&, 
trying to kick him in the stomach&.

Koujaku dodges it with his hand and returns the favor 
with a headbutt&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_ヒット低01");//あきゅん「ＳＥ：se戦闘_打撃_ヒット低01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(10);
	FadeDelete("絵色白", 70, null, true);

	Fw("fwノイズ_通常_pain");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0045]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm03/6100130a03">
"Tsk!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
That slows the man's movements&. But he immediately 
kicks Koujaku in the stomach again&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw紅雀_通常_angry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0051]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm03/6100140a02">
"&.&.&.Ugh&, asshole!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se戦闘_打撃_風切り低01");
	MusicStart("SE01",0,700,0,800,null,false);
	CreateColorSP("絵色白", 4000, "FFFFFF");
	Wait(10);
	FadeDelete("絵色白", 70, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
Koujaku retreats to a safe distance and the knee of the 
man goes just above the hem of his kimono&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1400,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0053]
Koujaku&, fed up with the bratty man who won't behave&, 
raises his fist fiercely&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_ノック01");
	MusicStart("SE01",0,700,0,1500,null,false);

	DeleteAllSt(200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0054]
&.&.&.Then&, a sound comes from the window&.

Everyone's attention is turned to there&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);
	Wait(16);

	OnBG(10,"bg104041_3_蒼葉宅ベランダ");
	FadeBG(0,true);

	St("C",740, @0,@500,"fuクリア_通常マスクあり_normal");
	FadeSt("C",0,true);

	Wait(16);

	Delete("絵板写");

	CreateSE("SE01","se物体_蒼葉自室窓_開閉01a");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeFFR("@StNameC/C*",0,3000,150,0,0,60,null, true);
	Move("@StNameC/C*", 3000, @0, @-500, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm03/6100150a04">
"Maaaaaaaasteeeeeeeeerrr&.&.&.!"

&.&.&.&.&.

{
	Fw("fw蒼葉_通常_shout2");

	CreateSE("SE02","se物体_蒼葉宅階段_登る強く01");
	MusicStart("SE02",0,700,0,1000,null,false);
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm03/6100160a01">
"Eeeeeeeeeeeeeeehh!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm0370.nss"]

}
