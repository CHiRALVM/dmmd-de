//<continuation number="60">
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


scene dm3440.nss_MAIN
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

	#bg302011_5_グリッター部屋01ベッド角=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3450.nss";

}


scene dm3440.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");
	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(0,true);

	Delete("上背景");
	FadeDelete("絵色黒", 2000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
The next day&.

I had the worst time waking up&, my head swirling because I tried to get up too quickly&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_pain2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/4000010a01">
"Ouch&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
My head&, my face&, my insides&, they all hurt&.
My hands and feet feel numb and heavy&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fw蒼葉_通常_pinch");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/4000020a01">
"Ugh&.&.&. Ouch&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_寝返り");
	MusicStart("SE01",0,700,0,1000,null,false);
	OnBG(10,"bg302011_5_グリッター部屋01ベッド角");
	FadeBG(1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
Taking my time to get up&, I realize that Tori is there&, 
perched on the headboard&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/4000030a01">
"Huh&.&.&.? Good morning&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
As soon as I speak&, I immediately close my mouth&.

My voice is raspy and hoarse&.
Maybe because I was just getting up&, and&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	EfRecoIn1(10000,200);

	CreateTextureSP("絵効果背景", 1050, -549, -348, "cg/ev/l/ev339首を絞められる蒼葉_l.jpg");

	EfRecoIn2(500);

	Wait(1000);

	EfRecoOut1(100);

	Delete("絵効果*");

	EfRecoIn2(400);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
The embarrassment and regret from last night comes to 
mind&.

Tori just stares at me with his head slightly tilted&.

I wait for a bit&, but it seems Tori has no intent 
to talk to me&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,800,null,false);

	OnBG(10,"bg302011_5_グリッター部屋01");
	FadeBG(500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
I get up from the bed and take the scarce amount of pills 
I have left&.

I then get dressed&, activate Ren&, and hold him up in my 
arms&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se動物_動作_蓮起動01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	Fw("fw蒼葉_通常_worry2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0025]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/4000040a01">
"Morning&, Ren&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm34/4000050a06">
"Morning&, Aoba&. How are you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_confuse");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm34/4000060a01">
"&.&.&.Haha&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreatePlainSP("絵板写", 5000);

	OnBG(10,"bg302041_5_グリッター廊下");
	FadeBG(0,true);

	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/l/bg302041_5_グリッター廊下_l.jpg");

	CreateSE("SE01","se物体_ドア木_扉開く01a");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵板写", 500, null, true);

	Wait(500);

	CreateSE("SE01","se動物_動作_羽ばたき去る01");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(500);

	SetVolumeEX("SE01", 1500, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
I reach for the door to leave the room&, and Tori flaps his wings and passes me just as it opens&.

&.&.&.Why was he in my room?
It might of been because of Tori that&.&.&.

For some reason I felt Mink's presence in the room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se物体_ドア木_扉開く01b");
	MusicStart("SE01",0,700,0,1000,null,false);
	FadeDelete("絵背景", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
I leave the room and walk down the corridor&.

I'm a complete wreck from yesterday&, the first thing I 
want to do is take a bath&.&.&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm3450.nss"]

}
