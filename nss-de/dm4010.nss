//<continuation number="70">
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


scene dm4010.nss_MAIN
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
	$GameName = "dm4030.nss";

}


scene dm4010.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm009",0,450,true);

	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg101022_5_旧住民区通り裏路地02");
	FadeBG(0,true);

	Delete("上背景");

	CreateSE("SE12","se人体_足音_走る01L");//あきゅん「ＳＥ：se人体_足音_走る01L」
	MusicStart("SE12",0,500,0,1200,null,true);

	DrawDelete("絵色黒", 250, 100, null, "slide_01_01_1", true);

//==============================
//※クリアの場合：
//==============================

	Fw("fw蒼葉_通常_rage");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/1000010a01">
"Shit&.&.&.!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE11","se人体_足音_走る01L");//あきゅん「ＳＥ：se人体_足音_走る01L」
	MusicStart("SE11",4000,500,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
I put all of my body and mind into running through an alleyway as fast as I can&.

After a little while&, I notice the sound of footsteps 
following right behind me&.

The cops&.&.&.!?

{	SetVolumeEX("SE11", 2000, 800, null);}

I need to run faster&, or else&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE11", 1000, 700, null);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/1000020a04">
"Master!"

{	Fw("fw蒼葉_通常_shock");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/1000030a01">
"! Clear!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
When I turn around&, I see Clear running right behind me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/1000040a01">
"You&.&.&.!"

{
	Fw("fwクリア_通常マスクあり_normal");
	ClearComicNext(20001,60,300,26,"ev");
}
//【クリア】※漫符：飛汗３？
<voice name="クリア" class="クリア" src="voice/dm40/1000050a04">
"Please don't leave me behind!!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	ClearComicNexDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
As I slow down a little&, Clear catches up with me&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwクリア_通常マスクあり_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0023]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm40/1000060a04">
"Master&, the police are still following us! We need to run
 farther away!"

{	Fw("fw蒼葉_通常_angry");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm40/1000070a01">
"Got it!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
I only focus on following Clear's lead and we both dash 
through the alleyway&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

	CreateColorSP("絵黒幕", 5000, "000000");
	DrawTransition("絵黒幕", 250, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	Wait(500);

//※次ファイル["dm4030.nss"]

}
