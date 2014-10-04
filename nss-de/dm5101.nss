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


scene dm5101.nss_MAIN
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
	$GameName = "dm5110.nss";

}


scene dm5101.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, -111, -440, "cg/bg/l/bg302011_5_グリッター部屋01_l.jpg");
	CreateTextureSP("絵ＥＶ111", 111, -250, -268, "cg/ev/m/ev026蓮メンテb_m.jpg");

	Delete("上背景");

	FadeDelete("絵ＥＶ111", 500, null, true);
	Wait(300);
	Fw("fw蒼葉_通常_sad");

//===========================================
//「申し訳ない気持ちになる」を選んだ場合
//===========================================

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0100010a01">
"&.&.&.I'm sorry&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0100020a06">
"Why are you apologizing?"

{	Fw("fw蒼葉_通常_worry4");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0100030a01">
"No&, well&. You're my important partner&. I wasn't paying
 enough attention&.&.&. And it was my responsibility to&."

{	Fw("fwAM蓮_通常_normal");}
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0100040a06">
"It's not really your fault&."

{	Fw("fw蒼葉_通常_worry2");}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0100050a01">
"I'm awful&. Lately&, I&.&.&. Somehow I've come to dislike
 myself because of all this&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fwAM蓮_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【蓮】
<voice name="蓮" class="蓮" src="voice/dm51/0100060a06">
"&.&.&.&.&."

{
	Fw("fw蒼葉_通常_confuse");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm51/0100070a01">
"Just kidding&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
My mood sinking&, I take Ren and place him to my forehead&.

{
	CreateSE("SE01","se人体_動作_衣擦れ18");
	MusicStart("SE01",0,500,0,1800,null,false);
}
&.&.&.And something pushes on my cheek&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

//※次ファイル["dm5110.nss"]

}
