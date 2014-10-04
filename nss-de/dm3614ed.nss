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


scene dm3614ed.nss_MAIN
{
$TEXTBOX_TYPE="暴露";
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
	#ev361ミンクBADED=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	SparksDropDelete(0);
	$GameName = "dm9999.nss";

	//★エンドロール
	PreSetRoll(4);
	TheEND(4);

#BDED3=1;//ミンクバッドエンドフラグ取得

}


scene dm3614ed.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	SparksDrop(0);
	$ミンクのトラウマ=2;
	MinkSparksDropStrengthFade();

//	OnBG(10,"bg101011_1_旧住民区通り表");
//	FadeBG(0,true);
	CreateColorEX("絵色黒", 15000, "000000");

	CreateTextureSP("絵ＥＶＬ100", 100, -712, -300, "cg/ev/l/ev361ミンクBADED_l.jpg");
	SetBlur("絵ＥＶＬ100", true, 2, 200, 200, false);
	MoveFTP1("@絵ＥＶＬ100",10000,10,8);

	CreateTextureEX("絵ＥＶ100", 100, Center, Middle, "cg/ev/ev361ミンクBADED.jpg");

	CreateSE("SE01","se擬音_水_はねる01");
	MusicStart("SE01",3000,700,0,500,null,true);
	CreateSE("SE01b","se擬音_水_はねる01");
	MusicStart("SE01b",3000,700,0,733,null,true);

	CreateSE("SE02","se人体_心臓_鼓動01L");
	MusicStart("SE02",3000,400,0,1000,null,true);



	Wait(2500);

	FadeDelete("上背景", 1500, null, true);
	Wait(500);

	Fade("絵色黒", 1500, 1000, null, true);
	MoveFTP1stop();
	Move("絵ＥＶＬ100", 0, -100, -500, null, true);
	MoveFTP1("@絵ＥＶＬ100",10000,10,8);

	Wait(500);

	Fade("絵色黒", 1500, 0, null, true);

	Wait(500);

	Fade("絵色黒", 1500, 1000, null, true);
	MoveFTP1stop();
//	Move("絵ＥＶＬ100", 0, 0, 0, null, true);
//	MoveFTP1("@絵ＥＶＬ100",10000,10,8);
	Delete("絵ＥＶＬ100");
	Fade("絵ＥＶ100", 0, 1000, null, true);

	Wait(500);


//※演出：演出強化予定
//※演出：画面暗転
//※ＳＥ：ぽとっ、ぽとっ、と血が滴る音

//	St("C",740, @0,@0,"stミンク_通常_normal");
//	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1400010a05">
"&.&.&.With this&, I can protect your spirit&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――

	TextBoxDelete(0);

	Wait(500);
	Fade("絵色黒", 2000, 0, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1400020a05">
"It will be with me for eternity&.&.&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1400030a05">
"Always with me&.&.&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm36/1400040a05">
"Always&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	Wait(1500);

	SetVolumeEX("SE*", 4000, 0, null);

	Fade("絵色黒", 4000, 1000, null, true);

	SparksDropDelete(0);

	Wait(1000);

	ClearFadeAll(0, true);

	Wait(3000);
	WaitKey(2000);

	Request("@EFWIN/ミンクトラウマ",UnLock);
	Delete("@EFWIN/ミンクトラウマ");

//※次ファイル["dm9999.nss"]

}
