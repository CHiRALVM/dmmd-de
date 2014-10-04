//<continuation number="30">
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


scene dm4510.nss_MAIN
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
	$GameName = "dm4520.nss";

}


scene dm4510.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg304131_5_東江タワー東江の間前廊下");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg304131_5_東江タワー東江の間前廊下.jpg");

	dm1500ShakeLoop("絵揺れ","bg304131_5_東江タワー東江の間前廊下",400,1);

	CreateSE("SE01","se物体_東江タワー_地鳴り01L");
	MusicStart("SE01",1000,300,0,1000,null,true);

	DrawDelete("上背景", 500, 100, null, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
We leave out the hall&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_正面崩壊_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm45/1000010a04">
"If we go down the cooridor to the left&, there's an
 emergency elevator&. It goes directly to the first floor&.
 And then we go down from there&."

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/1000020a01">
"Got it&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SoundPlay("@dm007a",0,450,true);

//※どかーんと遠くで爆発音
//※アラーム音

	CreateSE("SE02","se物体_東江タワー_爆発01");
	MusicStart("SE02",0,700,0,1000,null,false);
	Shake("絵揺れ", 500, 50, 50, 0, 0, 500, null, false);

	Wait(1000);

/*
	CreateSE("@EFWIN/SE11","se物体_東江タワー_地鳴り01L");
	Request("@EFWIN/SE11", Lock);
	MusicStart("@EFWIN/SE11",0,700,0,1000,null,true);

	Wait(300);
*/

	CreateSE("SE22","se物体_東江タワー_アラーム01L");
	MusicStart("SE22",0,700,0,1000,null,true);
	CreateVOICE("合成音声","dm25/1000010e14");
	MusicStart("合成音声",0,700,0,1000,null,true);

	SetVolumeEX("SE22", 5000, 300, null);


	CreateColorEXmul("絵色赤", 500, RED);
	Fade("絵色赤", 300, 600, null, true);

	CreateVOICE("合成音声","dm25/1000010e14");
	MusicStart("合成音声",0,700,0,1000,null,false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
I hear the sound of an explosion&, and an alarm goes off&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm45/1000030a01">
"We gotta hurry&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
While doing as much as I can for Clear&, I rush down the 
shaking hallway to the emergency elevator&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);
	SetVolumeEX("合成*", 2000, 0, null);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ClearFadeAll(1000, true);

//※次ファイル["dm4520.nss"]

}
