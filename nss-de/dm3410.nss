//<continuation number="180">
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


scene dm3410.nss_MAIN
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
	#ev341黒蒼葉、ミンクに抵抗=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3420.nss";

}


scene dm3410.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateColorSP("絵色黒", 5000, "000000");

	OnBG(10,"bg302021_5_グリッター居間天井");
	FadeBG(0,true);

	FadeDelete("上背景", 1000, null, true);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(2000);

	DrawTransition("絵色黒", 500, 1000, 800, 100, null, "cg/data/slide_05_00_0.png", true);
	Wait(500);
	DrawTransition("絵色黒", 500, 800, 1000, 100, null, "cg/data/slide_05_00_0.png", true);

	Wait(2000);

	CreateSE("SE01","se人体_心臓_鼓動02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0009]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000010b01">
"&.&.&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DrawTransition("絵色黒", 1500, 1000, 0, 500, null, "cg/data/slide_05_00_0.png", true);
	Wait(1000);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000020b01">
"&.&.&.Hah&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000030b01">
"Haha&, Ahah&.&.&. Ahaha!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/1000040a05">
"&.&.&.!?"

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/1000050a05">
"&.&.&.You&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1000,null,false);

	SoundPlay("@dm017",3000,450,true);

	CreateTextureEX("絵ＥＶ102", 102, -660, -335, "cg/ev/l/ev341黒蒼葉、ミンクに抵抗_l.jpg");
	CreateTextureEX("絵ＥＶ101", 101, Center, Middle, "cg/ev/ev341黒蒼葉、ミンクに抵抗.jpg");
	CreateTextureEX("絵ＥＶ100", 100, -748, -537, "cg/ev/l/ev341黒蒼葉、ミンクに抵抗_l.jpg");
	Move("絵ＥＶ100", 500, -748, -434, Dxl3, false);
	Fade("絵ＥＶ100", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000060b01">
"What&.&.&. I've been dragged out just like you wanted&.&.&.
 Ngh&, ah&.&.&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/1000070a05">
"&.&.&.&.&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000080b01">
"Holding him down&, bringing me out and still doing the same
 to me&.&.&. Wasn't it your intention to have full control
 over 'Aoba'? &.&.&.Haha!"

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000090b01">
"Then he's much more useful as a tool&, right? But I'm going
 to have to apologize&.&.&. I have no intention to yield to
 you&. Ever&."

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000100b01">
"Because I have the power of Scrap&.&.&. If you want to do
 something&, why don't we? In exchange&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ01");
	MusicStart("SE01",0,700,0,1400,null,false);

	Move("絵ＥＶ100", 500, -853, -183, Dxl3, true);

//	Fw("fw蒼葉_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000110b01">
"I'll churn your brain into little tiny pieces&.&.&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ02");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵ＥＶ100", 500, -1022, 0, Dxl3, false);
	Fade("絵ＥＶ101", 500, 1000, null, true);
	Delete("絵ＥＶ100");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/1000120a05">
"&.&.&.Shut up&.&.&.!"

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000130b01">
"Haha&, ahahaha- Ha! More&.&.&. More!"

{
	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1000,null,false);
}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000140b01">
"Ahaha&, ah- ngh- ah&.&.&. Go as far as you can inside of
 me&.&.&. Here!"

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm34/1000150a05">
"&.&.&.!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_動作_衣擦れ10");
	MusicStart("SE01",0,700,0,1400,null,false);

	Move("絵ＥＶ102", 500, -536, -411, Dxl3, false);
	Fade("絵ＥＶ102", 500, 1000, null, true);

	Delete("絵ＥＶ101");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000160b01">
"Ahahaha&, stonger&, with the intent to kill!!!"

//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000170b01">
"Ahahaha&.&.&.!"

{
	SetVolumeEX("@dm*", 1000, 0, null);
}
//【白蒼葉】
<voice name="白蒼葉" class="蒼葉" src="voice/dm34/1000180b01">
"Ahahahahahahahahaha!!!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	ClearFadeAll(2000, true);

	Wait(3000);

//※次ファイル["dm3420.nss"]

}
