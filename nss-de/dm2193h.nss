//<continuation number="840">
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


scene dm2193h.nss_MAIN
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
	#ev219ノイズ戯れフェラ=true;
	#ev219ノイズ戯れフェラa=true;
	#ev219ノイズ戯れフェラb=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "dm2200.nss";

	if($RECRIB_PLAY==1){//回想モード中
		$GameName = "";
		$GameCircle=false;
	}
	#RECLIB04=1;//回想用フラグ取得

}


scene dm2193h.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	SoundPlay("@dm012",0,450,true);

	PrintBG("上背景", 30000);

	OnBG(10,"bg302012_5_グリッター部屋02");
	FadeBG(0,true);

	CreateTextureSP("絵背景100", 100, -1019, -487, "cg/bg/l/bg302012_5_グリッター部屋02_l.jpg");

	FadeDelete("上背景", 0, null, true);

	Fw("fwノイズ_通常帽子なし_normal2");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0303]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000750a03">
"&.&.&.Wipe that off&."

{
	Fw("fw蒼葉_通常_sad");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000760a01">
"&.&.&.uh&, yeah&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
Noiz pulls out several sheets of tissue that had been 
placed on the sideboard and holds them out&.

I take them and wipe the cum dripping from my chin&.

The tension went up halfway and I was biting him quite 
strongly&.&.&. Is he bleeding?

I glance at Noiz's dick&.

There doesn't seem to be anything wrong&. What a relief&.

{
	Fw("fw蒼葉_通常_worry4");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000770a01">
"&.&.&.I was wondering&. Do you like pain?"

{
	Fw("fwノイズ_通常帽子なし_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000780a03">
"&.&.&.Not really&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
Noiz suddenly averts his gaze&.

Oh&, well&.&.&.
Each person has their own preferences&.

I don't really feel a need to press the matter&, and while 
I'm a bit surprised&, it's not like I mind&.

That said&.&.&.

The heat cools down&, and many questions that I hadn't 
thought about until now suddenly poke at me&.

Like&, even though I just went with the flow of the 
situation&, when I really think about it&, I did something 
unbelievable&.

Like it was a bad joke&, or a nasty game&.&.&.

But when I had Noiz in my mouth&, he was honest though&.

I think that part of him is a little bit cute after all&.

{
	Fw("fwノイズ_通常帽子なし_normal3");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000790a03">
"&.&.&.I'll go take a shower&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	DeleteFw();

	CreateSE("SE01","se物体_ベッド_倒れ込む");
	MusicStart("SE01",0,700,0,1000,null,false);

	Move("絵背景*", 500, @0, @80, Dxl1, false);
	FadeDelete("絵背景*", 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
Noiz gets up&, lightly adjusts his clothes&, and gets off 
the bed&.

{
	Fw("fwノイズ_通常帽子なし_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000800a03">
"What about you?"

{
	Fw("fw蒼葉_通常_normal2");
}
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000810a01">
"I'll go after you&."

{
	Fw("fwノイズ_通常帽子なし_normal2");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000820a03">
"Wanna go in together?"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	Fw("fw蒼葉_通常_shock");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【蒼葉】
<voice name="蒼葉" class="蒼葉" src="voice/dm21/9000830a01">
"Well&, uh&.&.&."

{
	Fw("fwノイズ_通常帽子なし_normal");
}
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm21/9000840a03">
"&.&.&.Just kidding&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("@dm*", 3000, 0, null);

	CreateSE("SE01","se物体_ドア木_扉開く01");
	MusicStart("SE01",0,700,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
Saying that with an indifferent expression as usual&, Noiz  leaves the room&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	if($RECRIB_PLAY==1){//回想時
		TextBoxDelete(0);
		ClearFadeAll(1000, true);Wait(2000);
	}

//※次ファイル["dm2200.nss"]

}
