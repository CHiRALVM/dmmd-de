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


scene dm0661_vs.nss_MAIN
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


scene dm0661_vs.nss
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
//※「紅雀の敵を引きつける」を選んだ場合
//==============================================

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/6100010a01">
"Hey&, over here!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
As I yelled out&, the black-clothed guy aiming for Koujaku 
turned around in caution&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shout");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/6100020a01">
"Take this!"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se戦闘_打撃_風切り低02");//あきゅん「ＳＥ：se戦闘_打撃_風切り低02」
	CreateSE("SE02","se戦闘_打撃_ヒット高01");//あきゅん「ＳＥ：se戦闘_打撃_ヒット高01」

	CreateColorSP("絵色白", 4000, "FFFFFF");
	CreateTextureEX("絵EV", 2000, 0, Middle, "cg/ev/ev900蒼葉蹴り汎用.jpg");
	Request("絵EV", Smoothing);
	Move("絵EV", 0, -512, @0, null, true);
	Zoom("絵EV", 0, 2500, 2500, null, true);
	Fade("絵EV", 0, 1000, null, true);

	Move("絵EV", 400, 0, @0, Dxl1, false);
	Zoom("絵EV", 400, 1000, 1000, null, false);

	MusicStart("SE01",0,700,0,1000,null,false);
	Fade("絵色白", 100, 0, null, true);
	Wait(300);
	MusicStart("SE02",0,700,0,1000,null,false);
	Fade("絵色白", 50, 1000, null, true);
	Delete("絵EV");

	CreateSE("SE03","se人体_衝撃_転倒01");
	MusicStart("SE03",0,700,0,1000,null,false);

	FadeDelete("絵色白", 50, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
I let loose a roundhouse kick and knocked out two of the 
guys on one side&. I threw my fist into the stomach of one 
of the guys down on the floor&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	St("C",740, @0,@0,"st紅雀_戦闘太刀_pride");
	FadeSt("C",100,true);}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0014]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/6100030a02">
"Thanks for that!"

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/6100040a01">
"You're welcome!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"st紅雀_戦闘太刀_normal2");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm06/6100050a02">
"Anyway&, aren't these guys part of Dry Juice!?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0021]
After hearing Koujaku say that&, my doubts began to turn 
into certainty&. 

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

{	Fw("fw蒼葉_通常_worry4");}
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0022]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm06/6100060a01">
"But&, then why are they doing this&.&.&.!?"


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();
	DeleteAllSt(200,true);

//※次ファイル["dm0670_vs.nss"]

}
