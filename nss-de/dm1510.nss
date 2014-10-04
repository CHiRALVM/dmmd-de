//<continuation number="40">
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


scene dm1510.nss_MAIN
{
//■超速設定
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){

//超速設定２
		if($dm1500_SE11==true){Request("SE11",UnLock);$dm1500_SE11=false;}

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
	#bg304033_5_東江タワー廊下03=true;
	#bg304061_5_東江タワー階段=true;
	#bg304062_5_東江タワー階段別アングル=true;

	//▼演出処理
	Request("@EFWIN/合成音声",Lock);
	Request("@EFWIN/SE01",Lock);

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm1520.nss";

}


scene dm1510.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg304112_5_東江タワー中ホール扉前");
	FadeBG(0,true);

	Delete("上背景");

//嶋：超速対応
	if($dm1500_SE11==true){
		Request("SE11",UnLock);
		$dm1500_SE11=false;
	}else{
		CreateSE("SE11","se物体_東江タワー_地鳴り01L");
		MusicStart("SE11",0,700,0,1000,null,true);
	}

//あきゅん「※：超速対応、アラームと警報音」
	if($CautionAlarm==true){
		Request("@EFWIN/SE01", Play);
		Request("@EFWIN/合成音声", Play);
		SetVolumeEX("@EFWIN/SE01", 10, 300, null);
		SetVolumeEX("@EFWIN/合成音声", 10, 700, null);

	}else{
	CreateSE("@EFWIN/SE01","se物体_東江タワー_アラーム01L");
	Request("@EFWIN/SE01", Lock);
	MusicStart("@EFWIN/SE01",0,300,0,1000,null,true);
	CreateVOICEEX("@EFWIN/合成音声","dm15/0000010e14","合成音声");
	Request("@EFWIN/合成音声", Lock);
	MusicStart("@EFWIN/合成音声",0,700,0,1000,null,true);
	$CautionAlarm=true;
	}

//嶋：ＢＧＭ
	SoundPlay("@dm008",0,450,true);

	CreateColorEXmul("絵dm3520red", 500, RED);
	Fade("絵dm3520red", 0, 600, null, true);

	$dm1500BG_SHAKEP=2;
	dm1500ShakeLoop("絵シェイク","bg304112_5_東江タワー中ホール扉前",400,1);

	DrawDelete("絵色黒", 250, 100, null, "slide_01_03_1", true);


	Fw("fwm紅雀チームA_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【紅雀メンバーＡ】
<voice name="紅雀メンバーＡ" class="紅雀メンバーＡ" src="voice/dm15/1000010e47">
"The elevator over here is broken! Take the stairs!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE12","se人体_足音_走る03複数L");//あきゅん「ＳＥ：se人体_足音_走る03複数L」
	MusicStart("SE12",0,700,0,750,null,true);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteAllSt(0,true);
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro01");

	OnBG(10,"bg304033_5_東江タワー廊下03");
	FadeBG(0,true);

	dm1500ShakeLoop("絵シェイク","bg304033_5_東江タワー廊下03",400,2);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_1", true);

	SetVolumeEX("SE12", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Following the members in front of us&, we run down the 
hallway to the staircase&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteAllSt(0,true);
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro02");

	OnBG(10,"bg304032_5_東江タワー廊下02");
	FadeBG(0,true);

	dm1500ShakeLoop("絵シェイク","bg304032_5_東江タワー廊下02",400,1);

	DrawDelete("絵黒幕", 150, 100, null, "slide_01_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
My headache has quieted down considerably&, so I can easily move around now&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	DeleteAllSt(0,true);
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro01");

	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	dm1500ShakeLoop("絵シェイク","bg304061_5_東江タワー階段",400,2);

	CreateSE("SE12","se人体_足音_走る03複数L");//あきゅん「ＳＥ：se人体_足音_走る03複数L」
	MusicStart("SE12",0,600,0,750,null,true);

	DrawDelete("絵黒幕", 150, 100, null, "zoom_01_00_1", true);

	SetVolumeEX("SE12", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
We finally reach the staircase&, and all we focus on is 
running down the stairs to the sound of the alarm echoing&.

I don't know how far we went down&.
But all we thought about was making it to the entrance&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm15/1000020a01">
"Hah&, haah&, hah&.&.&.&."

{	Fw("fw紅雀_バーサク正気_pain");}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm15/1000030a02">
"Guh&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
I went well over my body's limit&, and soon had to pause 
to catch a bit of breath&.

But still&, the fact that we made it down that many 
staircases was a miracle&.

We continued to move our feet as fast as we could to get 
out of there&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateColorSP("絵黒幕", 5000, "000000");

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	DeleteAllSt(0,true);
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro02");

	OnBG(10,"bg304062_5_東江タワー階段別アングル");
	FadeBG(0,true);

	Shake("@OnBG*", 2000, 0, 2, 0, 0, 500, null, false);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Wait(100);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Shake("@OnBG*", 0, 0, 0, 0, 0, 500, null, true);

	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	Shake("@OnBG*", 2000, 0, 2, 0, 0, 500, null, false);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Wait(100);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	Shake("@OnBG*", 0, 0, 0, 0, 0, 500, null, true);

	OnBG(10,"bg304062_5_東江タワー階段別アングル");
	FadeBG(0,true);
	dm1500ShakeLoop("絵シェイク","bg304062_5_東江タワー階段別アングル",400,1);

	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Wait(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0024]
I start to go dizzy&, my head spinning&.

The only sounds bouncing off the staircase wall was the 
rough breathing of all of us&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

	DeleteAllSt(0,true);
	Delete("@絵シェイク");
	Delete("@絵dm1500Pro01");

	OnBG(10,"bg304061_5_東江タワー階段");
	FadeBG(0,true);

	dm1500ShakeLoop("絵シェイク","bg304061_5_東江タワー階段",400,2);
	DrawTransition("絵黒幕", 150, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);

	Fw("fwm紅雀チームB_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【紅雀メンバーＢ】
<voice name="紅雀メンバーＢ" class="紅雀メンバーＢ" src="voice/dm15/1000040e48">
"Hah&, hah&, just- one more floor!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0026]
Looking down&, I see the staircase end and a hallway going 
on&.

Just a little more&.&.&.!


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
We make it down the steps&, and finally leave
out of the hallway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//嶋：めちゃ危険
	$dm1510_SE11=true;
	Request("SE11",Lock);

//※次ファイル["dm1520.nss"]

}
