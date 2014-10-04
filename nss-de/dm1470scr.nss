//<continuation number="80">
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


scene dm1470scr.nss_MAIN
{
$TEXTBOX_TYPE="";//暴露
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
	$GameName = "dm1480scr.nss";

}


scene dm1470scr.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――
//―――――――――――――――――――――――――――――――――――――――

//※入力成功した場合は以下へ==============================================

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 5000, "FFFFFF");
	OnBG(10,"bg304091_5_東江タワー中ホール");
	FadeBG(0,true);

	CreateTextureSP("絵ＥＶ", 1100, Center, Middle, "cg/ev/ev145紅雀妄想の蒼葉.jpg");

	FadeDelete("上背景", 0, null, true);
	FadeDelete("絵ＥＶ", 1000, null, true);

	Wait(500);

	St("C",740, @0,@0,"fu紅雀_通常_think2");
	FadeSt("C",0,true);

	FadeDelete("絵色白", 1000, null, true);


	Fw("fw蒼葉_通常_serious");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/7000010a01">
"&.&.&.Don't give in&."

{	Fw("fw蒼葉_通常_normal2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/7000020a01">
"Don't give in&, Koujaku&."

{	St("C",740, @0,@0,"fu紅雀_通常_normal2");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/7000030a02">
"! &.&.&.Aoba?"

{	Fw("fw蒼葉_通常_serious");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/7000040a01">
"You can't stay here&."

//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/7000050a01">
"There are things you need to face&. You understand that&,
 don't you?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("C",740, @0,@0,"fu紅雀_通常_think");
	FadeSt("C",200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/7000060a02">
"&.&.&.&.&."

{	Fw("fw蒼葉_通常_normal");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm14/7000070a01">
"I'll be with you&. Let's go back&, Koujaku&. Let's set it
 right&."

{	St("C",740, @0,@0,"fu紅雀_通常_sad");
	FadeSt("C",200,true);}
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm14/7000080a02">
"Aoba&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//あきゅん「※：画面切り替わる演出は次ファイル冒頭で」

/*
//※ビキビキ、と空間がガラスみたいにひび割れて紅雀の妄想世界が壊れる
	//CreateSE("SE01","ＳＥダミー");//あきゅん「ＳＥ：se擬音_精神_ひび01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateTextureSP("絵演効果", 1990, Center, Middle, "cg/ef/effi暴露成功.jpg");

	Wait(1000);

	//CreateSE("SE01","ＳＥダミー");//あきゅん「ＳＥ：se擬音_精神_割れる01」
	MusicStart("SE01",0,700,0,1000,null,false);
	CreateColorEXadd("絵色白", 4000, "FFFFFF");
	Fade("絵色白", 300, 1000, null, true);

	Wait(1000);
*/

//※次ファイル["dm1480scr.nss"]

}
