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


scene dm0662_vs.nss_MAIN
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
	$GameName = "dm0670_vs.nss";

}


scene dm0662_vs.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	OnBG(10,"bg402031_1_立ち入り禁止区域工場部屋01");
	FadeBG(0,true);

//嶋：ＢＧＭ引き継ぎ注意
	SoundPlay("@dm009",0,450,true);

	FadeDelete("上背景", 0, null, true);


//==============================================
//※「紅雀に近付く」を選んだ場合
//==============================================

	Fw("fw蒼葉_通常_angry");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/6200010a01">
"Koujaku!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_走る03");
	MusicStart("SE01",0,700,0,900,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
Rushing over&, I cover Koujaku's back&.

{
	SetVolumeEX("SE*", 1000, 0, null);

	CreateSE("SE01","se戦闘_打撃_ヒット低02");
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	Delete("絵ＥＶ");
	FadeDelete("絵色白", 70, null, true);

	Wait(200);

	CreateSE("SE02","se戦闘_打撃_風切り高01");
	MusicStart("SE02",0,700,0,1000,null,false);
	CreateColorSPadd("絵色白", 4000, "FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 70, null, true);

	Wait(200);

	CreateSE("SE03","se人体_衝撃_転倒01");
	MusicStart("SE03",0,700,0,1000,null,false);
	Wait(200);
	CreateSE("SE04","se人体_衝撃_転倒02");
	MusicStart("SE04",0,700,0,1000,null,false);
}
I haul a flying kick to the swarm of black-clothed men as  Koujaku takes out his sword&. Although&, he is only striking with the back side of it&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"bu紅雀_戦闘太刀_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/6200020a02">
"Aoba&, aren't&.&.&.&. these guys with Dry Juice?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
After hearing Koujaku say that&, my doubts turn into 
certainty&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_worry3");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/6200030a01">
"Yeah&."

{	St("C",740, @0,@0,"bu紅雀_戦闘太刀_normal");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/6200040a02">
"But&, then why are they doing this&.&.&.!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//※次ファイル["dm0670_vs.nss"]

}
