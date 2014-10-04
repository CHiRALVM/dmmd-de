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


scene dm3290.nss_MAIN
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
	#bg302011_5_グリッター部屋01天井=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3300.nss";

}


scene dm3290.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	OnBG(10,"bg302011_5_グリッター部屋01天井");
	FadeBG(0,true);

	Delete("上背景");

	CreateColorSP("絵黒幕", 5000, "BLACK");
	DrawTransition("絵黒幕", 1000, 1000, 600, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

//	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
When I open my eyes&, I see the ceiling&.

Is this a second floor bedroom&.&.&.?

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵黒幕", 800, 600, 0, 100, Dxl1, "cg/data/slide_05_00_0.png", true);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm32/9000010a01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
For a while I just dimly stare at the ceiling&.
I feel like an empty husk&.

Right now&.&.&. I don't want to think about anything&.

I want to sleep&, just sleep&.

Just like this&.&.&.

I sink in the sluggishness and the pain&, and let go of my 
consciousness without any difficulty&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm3300.nss"]

}
