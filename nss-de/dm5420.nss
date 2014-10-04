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


scene dm5420.nss_MAIN
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
	$GameName = "dm5430.nss";

}


scene dm5420.nss
{

	//■シーンの頭に必ず記述
	$スクリプトバージョン = " $Revision:  $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


//―――――――――――――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);

	SoundPlay("@dm008",0,450,true);

	OnBG(10,"bg304041_5_東江タワー研究エリア研究室");
	FadeBG(0,true);

	CreateColorEX("絵色黒", 5000, "000000");
	Fade("絵色黒", 0, 400, null, true);

	CreateColorSPadd("絵色白", 5000, "WHITE");
	Wait(300);

	CreateSE("SE01","se物体_ドア東江自動_扉開く無理やり01");
	MusicStart("SE01",0,700,0,1000,null,false);

	FadeDelete("上背景", 200, null, true);

	Wait(50);
	Fade("絵色白", 200, 0, Dxl2, true);

	Wait(500);

	CreateSE("SE02","se人体_足音_走る03複数");
	MusicStart("SE02",1000,700,0,700,null,false);
	CreateSE("SE03","se人体_足音_走る03");
	MusicStart("SE03",1000,700,0,700,null,false);

//※ばたばたと紅雀たちが乱入してくる音

//覇：以下出さない方が良いと思いましたので立ち絵消去
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【紅雀】
<voice name="紅雀" class="紅雀" src="voice/dm54/2000010a02">
"Aoba!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	SetVolumeEX("SE*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
A familiar voice dimly reaches my ears&.

That voice&.&.&.

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ミンク】
<voice name="ミンク" class="ミンク" src="voice/dm54/2000020a05">
"Morphine&, huh&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0031]
//【ノイズ】
<voice name="ノイズ" class="ノイズ" src="voice/dm54/2000030a03">
"Keep it down&."


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0032]
//【クリア】
<voice name="クリア" class="クリア" src="voice/dm54/2000040a04">
"Master!"

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	St("ML",720, @0,@0,"stウイルス_通常バッヂ_angry");
	St("MR",700, @0,@0,"stトリップ_通常バッヂ_think");

	FadeAllSt(200,true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【トリップ】
<voice name="トリップ" class="トリップ" src="voice/dm54/2000050b09">
"Oh&, man&."

{	St("ML",720, @0,@0,"stウイルス_通常バッヂ_think");
	FadeSt("ML",200,true);}
//【ウイルス】
<voice name="ウイルス" class="ウイルス" src="voice/dm54/2000060b04">
"&.&.&.Some pests got in&."

</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
//	TextBoxDelete(0);

	CreateSE("SE01","se人体_足音_歩く03");
	MusicStart("SE01",0,700,0,800,null,false);
	SetPan("SE01", 0, -1000, Dxl3);
	Wait(150);
	CreateSE("SE02","se人体_足音_歩く03");
	MusicStart("SE02",0,700,0,800,null,false);
	SetPan("SE02", 0, 1000, Dxl3);
	DeleteAllSt(500,true);

	Wait(300);

	SetVolumeEX("SE*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
Without the energy to make sure of what's going on&.&.&.

I barely hold onto my consciousness&.


</PRE>
	SetText();
	TypeBegin(0);//―――――――――――――――――――――――――――
	TextBoxDelete(0);

	SetVolumeEX("@dm*", 2000, 0, null);
	ClearFadeAll(2000, true);

	Wait(2000);

//※次ファイル["dm5430.nss"]

}
