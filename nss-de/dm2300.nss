//<continuation number="90">
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


scene dm2300.nss_MAIN
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
	#bg304081_5_東江タワー物置部屋=true;
	#bg304051_5_東江タワー研究エリア廊下01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2300sl.nss";

}


scene dm2300.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304051_5_東江タワー研究エリア廊下01");
	FadeBG(0,true);

//	OnBG(10,"bg304052_5_東江タワー研究エリア廊下02");
//	FadeBG(0,true);

	SoundPlay("@dm007a",0,450,true);

	FadeDelete("上背景", 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
&.&.&.But it was nothing but a fleeting thought&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se動物_足音_歩く防衛01");
	CreateSE("SE02","se動物_足音_歩く防衛01");

	CreateTextureEX("絵ＥＶ", 100, Center, Middle, "cg/ev/evf03防衛ＡＭ立ちふさがるb.jpg");

	MusicStart("SE01",0,600,0,1000,null,false);
	Wait(200);
	MusicStart("SE02",0,600,0,1200,null,false);
	Fade("絵ＥＶ", 500, 1000, null, true);

	Wait(500);
	SetVolumeEX("SE01", 500, 0, null);
	SetVolumeEX("SE02", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
At the back of the hallway&, more similar-looking dogs 
appeared&.

How many more of them are out there&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwノイズ_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/0000010a03">
"Tch&, more of 'em? Hey&, can you run?"

{	Fw("fw蒼葉_通常_pinch");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/0000020a01">
"Yeah&."

{		Fw("fwノイズ_通常_angry");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/0000030a03">
"Let's hide somewhere and let them go past&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(30);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,1000,null,false);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Delete("絵ＥＶ");

	OnBG(10,"bg304053_5_東江タワー研究エリア廊下03");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, null, "slide_01_01_0", true);

	Wait(100);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	OnBG(10,"bg304052_5_東江タワー研究エリア廊下02");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 200, 100, null, "circle_01_00_1", true);
	SetVolumeEX("SE01", 500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
I hold my aching side with a hand and run down the hallway with Noiz&.

On the way there was a door that was half made of glass&, 
and we looked inside&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
It seemed to be a room for storing equipment&.
There wasn't any sign of people&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(30);

	CreateSE("SE02","se人体_足音_走る03");
	MusicStart("SE02",0,700,0,1000,null,false);


	OnBG(10,"bg304081_5_東江タワー物置部屋");

	CreateSE("SE03","se物体_ドア東江自動_扉開く01");
	MusicStart("SE03",0,700,0,1000,null,false);

	FadeBG(500,true);

	Wait(500);

	SetVolumeEX("SE01", 2000, 0, null);
	SetVolumeEX("SE02", 2000, 0, null);

	Wait(1000);

	CreateSE("SE04","se人体_動作_衣擦れ17");
	MusicStart("SE04",0,500,0,1000,null,false);
	CreateSE("SE05","se人体_動作_衣擦れ01");
	MusicStart("SE05",0,500,0,1200,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
We wait for the danger to pass by hiding between the evenlylined shelves&.

We try to hold in our heaving breaths as quietly as 
possible&, listening for any signs of activity outside&. 

{	CreateSE("SE01","se動物_足音_歩く防衛01");//あきゅん「ＳＥ：se動物_足音_歩く防衛01」
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("@dm*", 1000, 0, null);
}
Engulfed in the tense atmosphere&, the only sounds I hear   are my own hearbeat and the footsteps of the dogs outside&.

{	SetVolumeEX("SE01", 500, 0, null);}
The footsteps reach the door and stop&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/0000040a01">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(2000);

	CreateSE("SE01","se動物_足音_歩く防衛01");//あきゅん「ＳＥ：se動物_足音_歩く防衛01」
	MusicStart("SE01",0,700,0,1000,null,false);
	SetVolumeEX("SE01", 5000, 0, null);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
But after a while&, they pass and move farther away&.

&.&.&.What a relief&. They left&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sigh3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0033]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/0000050a01">
"&.&.&.Haah&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0034]
I breathe out a heavy sigh of relief&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry4");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/0000060a01">
"That was dangerous&."

{	Fw("fwノイズ_通常_angry2");}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/0000070a03">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I look at Noiz and see him staring into empty space with a brooding expression&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm23/0000080a01">
"Noiz?"

{	St("C",740, @0,@0,"stノイズ_通常_angry3");
	FadeSt("C",200,true);}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm23/0000090a03">
"&.&.&.I don't get it&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"stノイズ_通常_angry");
	FadeSt("C",200,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Muttering like he was talking to himself&, Noiz looks at me&. 

His sharp eyes startle me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//※次ファイル["dm2300sl.nss"]

}
