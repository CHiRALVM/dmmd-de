//<continuation number="10">
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


scene dm5170.nss_MAIN
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
	$GameName = "dm5180.nss";

}


scene dm5170.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302051_5_グリッター前通り");
	FadeBG(0,true);

	Delete("上背景");

	DrawDelete("絵色黒", 1000, 100, null, "blind_01_00_1", true);

	Wait(500);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
Once I made it back to Glitter&, I threw myself onto a bed 
in the bedroom and surfed the net on my Coil&.

I thought I'd look up some information on Toue&, but&.&.&.

{
	CreateSE("SE01","se物体_コイル_アラート");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm012",0,450,true);
}
I was unable to find anything on the Old Resident District&,
probably because it was censored&.

The rest of it was all praise and flowers for Toue and 
Platinum Jail&.

I couldn't send any messages to the Old Resident District 
or call there either&.

I close the error message on my Coil screen and let out a 
big sigh&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_sad");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/7000010a01">
"So the event tomorrow is my last hope&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
I'm worried about everyone in the Old Resident District&.

I look down a little and see Ren coiled up&, sleeping at my feet&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
Right now it would be difficult to find any immediate 
solution to Ren's problem&.

I wish I could go back to the Old Resident District before he gets any worse&.

All of this thinking causes me to convince myself to rest 
up for tomorrow&, and I close my eyes&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm5180.nss"]

}
