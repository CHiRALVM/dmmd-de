//<continuation number="90">
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


scene dm3750.nss_MAIN
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
	#ev375ミンクの祈り=true;
	#ev375ミンクの祈りa=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm3760.nss";

}


scene dm3750.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――


	PrintBG("上背景", 30000);

	CreateCamera("Ｃ", 0, 0, 1000);
	SetAlias("Ｃ","Ｃ");
	MoveCamera("Ｃ", 0, 0, 250, -150, null, false);

	CreateTextureSP("Ｃ/絵ＥＶＡ", 1100, Center, middle, "cg/ev/ev375ミンクの祈り.jpg");
	Request("Ｃ/絵ＥＶＡ", Smoothing);

	CreateSE("SE11","se物体_東江タワー_地鳴り01L");
	CreateSE("SE12","se物体_東江タワー_アラーム01L");
	MusicStart("SE11",3000,500,0,1000,null,true);
	MusicStart("SE12",3000,200,0,1000,null,true);

	CreateVOICE("合成音声","dm25/1000010e14");
	MusicStart("合成音声",0,700,0,1000,null,true);


	MoveCamera("Ｃ", 35000, 100, -250, -150, null, false);
	MoveFFP1("@Ｃ/*",14000,5,3);

	FadeDelete("上背景", 2000, null, true);

	Wait(1000);

//※視点切替／ミンク視点
//※タワー崩壊でぐらぐら揺れる中、ミンクは１人立っている。
//　足元にはナイフで刺し殺した東江の亡骸が。
//　東江をじっと無言で見つめているミンク。
//※ミンクのｓｔで手が血まみれとかあった方がいいのかな。

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000010a05">
"&.&.&.&.&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000020a05">
"&.&.&.&.&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000030a05">
"&.&.&.My brothers&, my parents&, and the companions I passed
 my days with&. The sprits of the deceased&, the father
 becomes the son&, the mother becomes the greenery&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000040a05">
"I have now reached the end of my long journey&. I pray that
 our blood stained land will be purified&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000050a05">
"And I pray that the burned forest will have a gust of life
 blown through it&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000060a05">
"I will now depart on the second journey&. I will return our
 sacred tools back to the great ancestors&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000070a05">
"Wait for me&.&.&. The spirits of the ones who lovingly
 watched over me&."

//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000080a05">
"&.&.&.Before long&.&.&. I will be there&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//	Fw("fwミンク_通常_normal");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm37/5000090a05">
"&.&.&.&.&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	CreateTextureEX("絵ＥＶ", 5000, Center, InBottom, "cg/ev/ev375ミンクの祈り.jpg");
	CreateTextureEX("絵ＥＶ２", 5090, Center, -5, "cg/ev/ev375ミンクの祈りa.jpg");
	Shake("絵ＥＶ", 500000, 0, 1, 0, 0, 1000, null, false);
	Shake("絵ＥＶ２", 500000, 0, 1, 0, 0, 1000, null, false);

	Wait(500);

	Fade("絵ＥＶ", 500, 1000, null, false);
	Move("絵ＥＶ", 3000, @0, -5, AxlDxl, true);
	Wait(500);

	Fade("絵ＥＶ２", 500, 1000, null, true);

	Wait(1000);

	CreateSE("SE01","se物体_東江タワー_爆発01");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(1000);
//※ミンク、祈るように目を閉じる。
//　揺れが一段と激しくなり、崩壊の音が大きくなる。
//　暗転

	SetVolumeEX("SE*", 2500, 0, null);
	SetVolumeEX("合成*", 2500, 0, null);

	Wait(500);

	ClearFadeAll(2000, true);
	Wait(1500);

//※次ファイル["dm3760.nss"]

}
